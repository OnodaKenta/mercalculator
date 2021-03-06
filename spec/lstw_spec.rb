require_relative "spec_helper.rb"

RSpec.describe Lstw do
  let!(:lstws) {Lstw.class_variable_set(:@@lstws, [])}
  let(:nekoPos) {Lstw.new(name: "ネコポス", url: "/method/nekoPos", fee: 175, box: 0, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○", lside: 31.2, sside: 22.8, thickness: 3, weight: 1000)}
  let(:yuPacketPost) {Lstw.new(name: "ゆうパケットポスト", url: "/method/yuPacketPost", fee: 200, box: 65, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○", lside: 32.7, sside: 22.8, thickness: 3, weight: 2000)}
  let(:clickPost) {Lstw.new(name: "クリックポスト", url: "/method/clickPost", fee: 198, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×", lside: 34, sside: 25, thickness: 3, weight: 1000)}
  let(:smartLetter) {Lstw.new(name: "スマートレター", url: "/method/smartLetter", fee: 180, box: 0, type: "日本郵便", anonymous: "×", tracking: "×", compensation: "×", lside: 25, sside: 17, thickness: 2, weight: 1000)}
  let(:letterPackLight) {Lstw.new(name: "レターパックライト", url: "/method/letterPackLight", fee: 370, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×", lside: 34, sside: 24.8, thickness: 3, weight: 4000)}
  let(:yuPacketPlus) {Lstw.new(name: "ゆうパケットプラス", url: "/method/yuPacketPlus", fee: 375, box: 65, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○", lside: 24, sside: 17, thickness: 7, weight: 2000)}

  describe "class_variable" do
    context "@@lstws" do
      it "@@lstwsが正しい" do
        expect(lstws).to eq [nekoPos, yuPacketPost, clickPost, smartLetter, letterPackLight, yuPacketPlus]
      end
    end
  end

  describe "fx" do
    context "classarray" do
      it "self.classarrayがクラス変数の中身と等しいか" do
        expect(Lstw.classarray).to eq [nekoPos, yuPacketPost, clickPost, smartLetter, letterPackLight, yuPacketPlus]
      end
    end
  end

  describe "local_variable" do
    context "nekoPos" do

      it "nekoPosのnameが正しい" do
        expect(nekoPos.name).to eq "ネコポス"
      end

      it "nekoPosのurlが正しい" do
        expect(nekoPos.url).to eq "/method/nekoPos"
      end
      
      it "nekoPosのfeeが正しい" do
        expect(nekoPos.fee).to eq 175
      end

      it "nekoPosのboxが正しい" do
        expect(nekoPos.box).to eq 0
      end

      it "nekoPosのtypeが正しい" do
        expect(nekoPos.type).to eq "らくらくメルカリ便"
      end

      it "nekoPosのanonymousが正しい" do
        expect(nekoPos.anonymous).to eq "○"
      end

      it "nekoPosのtrackingが正しい" do
        expect(nekoPos.tracking).to eq "○"
      end

      it "nekoPosのcompensationが正しい" do
        expect(nekoPos.compensation).to eq "○"
      end

      it "nekoPosのlsideが正しい" do
        expect(nekoPos.lside).to eq 31.2
      end

      it "nekoPosのssideが正しい" do
        expect(nekoPos.sside).to eq 22.8
      end

      it "nekoPosのthicknessが正しい" do
        expect(nekoPos.thickness).to eq 3
      end

      # it "nekoPosのthreesidesが正しい" do
      #   expect(nekoPos.threesides).to eq 0
      # end

      it "nekoPosのweightが正しい" do
        expect(nekoPos.weight).to eq 1000
      end

      # it "nekoPosのtitlenameが正しい" do
      #   expect(nekoPos.titlename).to eq "-"
      # end
    end
    
    context "yuPacketPost" do

      it "yuPacketPostのnameが正しい" do
        expect(yuPacketPost.name).to eq "ゆうパケットポスト"
      end

      it "yuPacketPostのurlが正しい" do
        expect(yuPacketPost.url).to eq "/method/yuPacketPost"
      end
      
      it "yuPacketPostのfeeが正しい" do
        expect(yuPacketPost.fee).to eq 200
      end

      it "yuPacketPostのboxが正しい" do
        expect(yuPacketPost.box).to eq 65
      end

      it "yuPacketPostのtypeが正しい" do
        expect(yuPacketPost.type).to eq "ゆうゆうメルカリ便"
      end

      it "yuPacketPostのanonymousが正しい" do
        expect(yuPacketPost.anonymous).to eq "○"
      end

      it "yuPacketPostのtrackingが正しい" do
        expect(yuPacketPost.tracking).to eq "○"
      end

      it "yuPacketPostのcompensationが正しい" do
        expect(yuPacketPost.compensation).to eq "○"
      end

      it "yuPacketPostのlsideが正しい" do
        expect(yuPacketPost.lside).to eq 32.7
      end

      it "yuPacketPostのssideが正しい" do
        expect(yuPacketPost.sside).to eq 22.8
      end

      it "yuPacketPostのthicknessが正しい" do
        expect(yuPacketPost.thickness).to eq 3
      end

      # it "yuPacketPostのthreesidesが正しい" do
      #   expect(yuPacketPost.threesides).to eq 0
      # end

      it "yuPacketPostのweightが正しい" do
        expect(yuPacketPost.weight).to eq 2000
      end

      # it "yuPacketPostのtitlenameが正しい" do
      #   expect(yuPacketPost.titlename).to eq "-"
      # end
    end

    context "clickPost" do

      it "clickPostのnameが正しい" do
        expect(clickPost.name).to eq "クリックポスト"
      end

      it "clickPostのurlが正しい" do
        expect(clickPost.url).to eq "/method/clickPost"
      end
      
      it "clickPostのfeeが正しい" do
        expect(clickPost.fee).to eq 198
      end

      it "clickPostのboxが正しい" do
        expect(clickPost.box).to eq 0
      end

      it "clickPostのtypeが正しい" do
        expect(clickPost.type).to eq "日本郵便"
      end

      it "clickPostのanonymousが正しい" do
        expect(clickPost.anonymous).to eq "×"
      end

      it "clickPostのtrackingが正しい" do
        expect(clickPost.tracking).to eq "○"
      end

      it "clickPostのcompensationが正しい" do
        expect(clickPost.compensation).to eq "×"
      end

      it "clickPostのlsideが正しい" do
        expect(clickPost.lside).to eq 34
      end

      it "clickPostのssideが正しい" do
        expect(clickPost.sside).to eq 25
      end

      it "clickPostのthicknessが正しい" do
        expect(clickPost.thickness).to eq 3
      end

      # it "clickPostのthreesidesが正しい" do
      #   expect(clickPost.threesides).to eq 0
      # end

      it "clickPostのweightが正しい" do
        expect(clickPost.weight).to eq 1000
      end

      # it "clickPostのtitlenameが正しい" do
      #   expect(clickPost.titlename).to eq "-"
      # end
    end

    context "smartLetter" do

      it "smartLetterのnameが正しい" do
        expect(smartLetter.name).to eq "スマートレター"
      end

      it "smartLetterのurlが正しい" do
        expect(smartLetter.url).to eq "/method/smartLetter"
      end
      
      it "smartLetterのfeeが正しい" do
        expect(smartLetter.fee).to eq 180
      end

      it "smartLetterのboxが正しい" do
        expect(smartLetter.box).to eq 0
      end

      it "smartLetterのtypeが正しい" do
        expect(smartLetter.type).to eq "日本郵便"
      end

      it "smartLetterのanonymousが正しい" do
        expect(smartLetter.anonymous).to eq "×"
      end

      it "smartLetterのtrackingが正しい" do
        expect(smartLetter.tracking).to eq "×"
      end

      it "smartLetterのcompensationが正しい" do
        expect(smartLetter.compensation).to eq "×"
      end

      it "smartLetterのlsideが正しい" do
        expect(smartLetter.lside).to eq 25
      end

      it "smartLetterのssideが正しい" do
        expect(smartLetter.sside).to eq 17
      end

      it "smartLetterのthicknessが正しい" do
        expect(smartLetter.thickness).to eq 2
      end

      # it "smartLetterのthreesidesが正しい" do
      #   expect(smartLetter.threesides).to eq 0
      # end

      it "smartLetterのweightが正しい" do
        expect(smartLetter.weight).to eq 1000
      end

      # it "smartLetterのtitlenameが正しい" do
      #   expect(smartLetter.titlename).to eq "-"
      # end
    end

    context "letterPackLight" do

      it "letterPackLightのnameが正しい" do
        expect(letterPackLight.name).to eq "レターパックライト"
      end

      it "letterPackLightのurlが正しい" do
        expect(letterPackLight.url).to eq "/method/letterPackLight"
      end
      
      it "letterPackLightのfeeが正しい" do
        expect(letterPackLight.fee).to eq 370
      end

      it "letterPackLightのboxが正しい" do
        expect(letterPackLight.box).to eq 0
      end

      it "letterPackLightのtypeが正しい" do
        expect(letterPackLight.type).to eq "日本郵便"
      end

      it "letterPackLightのanonymousが正しい" do
        expect(letterPackLight.anonymous).to eq "×"
      end

      it "letterPackLightのtrackingが正しい" do
        expect(letterPackLight.tracking).to eq "○"
      end

      it "letterPackLightのcompensationが正しい" do
        expect(letterPackLight.compensation).to eq "×"
      end

      it "letterPackLightのlsideが正しい" do
        expect(letterPackLight.lside).to eq 34
      end

      it "letterPackLightのssideが正しい" do
        expect(letterPackLight.sside).to eq 24.8
      end

      it "letterPackLightのthicknessが正しい" do
        expect(letterPackLight.thickness).to eq 3
      end

      # it "letterPackLightのthreesidesが正しい" do
      #   expect(letterPackLight.threesides).to eq 0
      # end

      it "letterPackLightのweightが正しい" do
        expect(letterPackLight.weight).to eq 4000
      end

      # it "letterPackLightのtitlenameが正しい" do
      #   expect(letterPackLight.titlename).to eq "-"
      # end
    end

    context "yuPacketPlus" do

      it "yuPacketPlusのnameが正しい" do
        expect(yuPacketPlus.name).to eq "ゆうパケットプラス"
      end

      it "yuPacketPlusのurlが正しい" do
        expect(yuPacketPlus.url).to eq "/method/yuPacketPlus"
      end
      
      it "yuPacketPlusのfeeが正しい" do
        expect(yuPacketPlus.fee).to eq 375
      end

      it "yuPacketPlusのboxが正しい" do
        expect(yuPacketPlus.box).to eq 65
      end

      it "yuPacketPlusのtypeが正しい" do
        expect(yuPacketPlus.type).to eq "ゆうゆうメルカリ便"
      end

      it "yuPacketPlusのanonymousが正しい" do
        expect(yuPacketPlus.anonymous).to eq "○"
      end

      it "yuPacketPlusのtrackingが正しい" do
        expect(yuPacketPlus.tracking).to eq "○"
      end

      it "yuPacketPlusのcompensationが正しい" do
        expect(yuPacketPlus.compensation).to eq "○"
      end

      it "yuPacketPlusのlsideが正しい" do
        expect(yuPacketPlus.lside).to eq 24
      end

      it "yuPacketPlusのssideが正しい" do
        expect(yuPacketPlus.sside).to eq 17
      end

      it "yuPacketPlusのthicknessが正しい" do
        expect(yuPacketPlus.thickness).to eq 7
      end

      # it "yuPacketPlusのthreesidesが正しい" do
      #   expect(yuPacketPlus.threesides).to eq 0
      # end

      it "yuPacketPlusのweightが正しい" do
        expect(yuPacketPlus.weight).to eq 2000
      end

      # it "yuPacketPlusのtitlenameが正しい" do
      #   expect(yuPacketPlus.titlename).to eq "-"
      # end
    end
  end
end