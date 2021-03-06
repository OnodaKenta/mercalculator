require_relative "spec_helper.rb"

RSpec.describe Common do

  let!(:commons) {Common.class_variable_set(:@@commons, [])}
  let(:yuPacket) {Common.new(name: "ゆうパケット", url: "/method/yuPacket", fee: 200, box: 0, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○")}
  let(:letterPackPlus) {Common.new(name: "レターパックプラス", url: "/method/letterPackPlus", fee: 520, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×")}
  let(:takkyubinCompact) {Common.new(name: "宅急便コンパクト", url: "/method/takkyubinCompact", fee: 380, box: 70, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○")}
  let(:takkyubinCompactThin) {Common.new(name: "宅急便コンパクト薄型BOX", url: "/method/takkyubinCompact", fee: 380, box: 70, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○")}
  let(:nothing) {Common.new(name: "なし", url: "none", fee: 0, box: 0, type: "-", anonymous: "×", tracking: "×", compensation: "×")}

  describe "class_variable" do
    context "@@commons" do
      it "@@comonsが正しい" do
        expect(commons).to eq [yuPacket, letterPackPlus, takkyubinCompact, takkyubinCompactThin, nothing]
      end
    end
  end

  describe "fx" do
    context "price" do
      it "price = fee + boxになるか" do
        expect(yuPacket.price).to eq 200
        expect(letterPackPlus.price).to eq 520
        expect(takkyubinCompact.price).to eq 450
        expect(takkyubinCompactThin.price).to eq 450
        expect(nothing.price).to eq 0
      end
    end

    # pusharrayはinitialize内で使用されているのでテストしない

    context "classarray" do
      it "self.classarrayがcommonsと等しいか" do
        expect(Common.classarray).to eq [yuPacket, letterPackPlus, takkyubinCompact, takkyubinCompactThin, nothing]
      end
    end
  end

  describe "local_variable" do
    context "yuPacket" do
      before do
        yuPacket.lside = 34
        yuPacket.thickness = 3
        yuPacket.threesides = 60
        yuPacket.weight = 1000
      end

      it "yuPacketのnameが正しい" do
        expect(yuPacket.name).to eq "ゆうパケット"
      end

      it "yuPacketのurlが正しい" do
        expect(yuPacket.url).to eq "/method/yuPacket"
      end
      
      it "yuPacketのfeeが正しい" do
        expect(yuPacket.fee).to eq 200
      end

      it "yuPacketのboxが正しい" do
        expect(yuPacket.box).to eq 0
      end

      it "yuPacketのtypeが正しい" do
        expect(yuPacket.type).to eq "ゆうゆうメルカリ便"
      end

      it "yuPacketのanonymousが正しい" do
        expect(yuPacket.anonymous).to eq "○"
      end

      it "yuPacketのtrackingが正しい" do
        expect(yuPacket.tracking).to eq "○"
      end

      it "yuPacketのcompensationが正しい" do
        expect(yuPacket.compensation).to eq "○"
      end

      it "yuPacketのlsideが正しい" do
        expect(yuPacket.lside).to eq 34
      end

      # it "yuPacketのssideが正しい" do
      #   expect(yuPacket.sside).to eq 0
      # end

      it "yuPacketのthicknessが正しい" do
        expect(yuPacket.thickness).to eq 3
      end

      it "yuPacketのthreesidesが正しい" do
        expect(yuPacket.threesides).to eq 60
      end

      it "yuPacketのweightが正しい" do
        expect(yuPacket.weight).to eq 1000
      end

      # it "yuPacketのtitlenameが正しい" do
      #   expect(yuPacket.titlename).to eq "-"
      # end
    end

    context "letterPackPlus" do
      before do
        letterPackPlus.lside = 34
        letterPackPlus.sside = 24.8
        letterPackPlus.weight = 4000
      end

      it "letterPackPlusのnameが正しい" do
        expect(letterPackPlus.name).to eq "レターパックプラス"
      end

      it "letterPackPlusのurlが正しい" do
        expect(letterPackPlus.url).to eq "/method/letterPackPlus"
      end
      
      it "letterPackPlusのfeeが正しい" do
        expect(letterPackPlus.fee).to eq 520
      end

      it "letterPackPlusのboxが正しい" do
        expect(letterPackPlus.box).to eq 0
      end

      it "letterPackPlusのtypeが正しい" do
        expect(letterPackPlus.type).to eq "日本郵便"
      end

      it "letterPackPlusのanonymousが正しい" do
        expect(letterPackPlus.anonymous).to eq "×"
      end

      it "letterPackPlusのtrackingが正しい" do
        expect(letterPackPlus.tracking).to eq "○"
      end

      it "letterPackPlusのcompensationが正しい" do
        expect(letterPackPlus.compensation).to eq "×"
      end

      it "letterPackPlusのlsideが正しい" do
        expect(letterPackPlus.lside).to eq 34
      end

      it "letterPackPlusのssideが正しい" do
        expect(letterPackPlus.sside).to eq 24.8
      end

      # it "letterPackPlusのthicknessが正しい" do
      #   expect(letterPackPlus.thickness).to eq 0
      # end

      # it "letterPackPlusのthreesidesが正しい" do
      #   expect(letterPackPlus.threesides).to eq 0
      # end

      it "letterPackPlusのweightが正しい" do
        expect(letterPackPlus.weight).to eq 4000
      end

      # it "letterPackPlusのtitlenameが正しい" do
      #   expect(letterPackPlus.titlename).to eq "-"
      # end
    end

    context "takkyubinCompact" do
      before do
        takkyubinCompact.lside = 25
        takkyubinCompact.sside = 20
        takkyubinCompact.thickness = 5
      end

      it "takkyubinCompactのnameが正しい" do
        expect(takkyubinCompact.name).to eq "宅急便コンパクト"
      end

      it "takkyubinCompactのurlが正しい" do
        expect(takkyubinCompact.url).to eq "/method/takkyubinCompact"
      end
      
      it "takkyubinCompactのfeeが正しい" do
        expect(takkyubinCompact.fee).to eq 380
      end

      it "takkyubinCompactのboxが正しい" do
        expect(takkyubinCompact.box).to eq 70
      end

      it "takkyubinCompactのtypeが正しい" do
        expect(takkyubinCompact.type).to eq "らくらくメルカリ便"
      end

      it "takkyubinCompactのanonymousが正しい" do
        expect(takkyubinCompact.anonymous).to eq "○"
      end

      it "takkyubinCompactのtrackingが正しい" do
        expect(takkyubinCompact.tracking).to eq "○"
      end

      it "takkyubinCompactのcompensationが正しい" do
        expect(takkyubinCompact.compensation).to eq "○"
      end

      it "takkyubinCompactのlsideが正しい" do
        expect(takkyubinCompact.lside).to eq 25
      end

      it "takkyubinCompactのssideが正しい" do
        expect(takkyubinCompact.sside).to eq 20
      end

      it "takkyubinCompactのthicknessが正しい" do
        expect(takkyubinCompact.thickness).to eq 5
      end

      # it "takkyubinCompactのthreesidesが正しい" do
      #   expect(takkyubinCompact.threesides).to eq 0
      # end

      # it "takkyubinCompactのweightが正しい" do
      #   expect(takkyubinCompact.weight).to eq 0
      # end

      # it "takkyubinCompactのtitlenameが正しい" do
      #   expect(takkyubinCompact.titlename).to eq "-"
      # end
    end

    context "takkyubinCompactThin" do
      before do
        takkyubinCompactThin.lside = 34
        takkyubinCompactThin.sside = 24.8
      end

      it "takkyubinCompactThinのnameが正しい" do
        expect(takkyubinCompactThin.name).to eq "宅急便コンパクト薄型BOX"
      end

      it "takkyubinCompactThinのurlが正しい" do
        expect(takkyubinCompactThin.url).to eq "/method/takkyubinCompact"
      end
      
      it "takkyubinCompactThinのfeeが正しい" do
        expect(takkyubinCompactThin.fee).to eq 380
      end

      it "takkyubinCompactThinのboxが正しい" do
        expect(takkyubinCompactThin.box).to eq 70
      end

      it "takkyubinCompactThinのtypeが正しい" do
        expect(takkyubinCompactThin.type).to eq "らくらくメルカリ便"
      end

      it "takkyubinCompactThinのanonymousが正しい" do
        expect(takkyubinCompactThin.anonymous).to eq "○"
      end

      it "takkyubinCompactThinのtrackingが正しい" do
        expect(takkyubinCompactThin.tracking).to eq "○"
      end

      it "takkyubinCompactThinのcompensationが正しい" do
        expect(takkyubinCompactThin.compensation).to eq "○"
      end

      it "takkyubinCompactThinのlsideが正しい" do
        expect(takkyubinCompactThin.lside).to eq 34
      end

      it "takkyubinCompactThinのssideが正しい" do
        expect(takkyubinCompactThin.sside).to eq 24.8
      end

      # it "takkyubinCompactThinのthicknessが正しい" do
      #   expect(takkyubinCompactThin.thickness).to eq 0
      # end

      # it "takkyubinCompactThinのthreesidesが正しい" do
      #   expect(takkyubinCompactThin.threesides).to eq 0
      # end

      # it "takkyubinCompactThinのweightが正しい" do
      #   expect(takkyubinCompactThin.weight).to eq 0
      # end

      # it "takkyubinCompactThinのtitlenameが正しい" do
      #   expect(takkyubinCompactThin.titlename).to eq "-"
      # end
    end

    context "nothing" do
      it "nothingのfeeが正しい" do
        expect(nothing.fee).to eq 0
      end

      it "nothingのboxが正しい" do
        expect(nothing.box).to eq 0
      end
    end
  end
end