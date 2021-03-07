require_relative "spec_helper.rb"

RSpec.describe Yupack do
  let!(:yuPacks) {Yupack.class_variable_set(:@@yuPacks, [])}
  let(:yuPack60) {Yupack.new(name: "ゆうパック60サイズ", fee: 700, threesides: 60)}
  let(:yuPack80) {Yupack.new(name: "ゆうパック80サイズ", fee: 800, threesides: 80)}
  let(:yuPack100) {Yupack.new(name: "ゆうパック100サイズ", fee: 1000, threesides: 100)}

  describe "class_variable" do
    context "@@yuPacks" do
      it "@@yuPacksが正しい" do
        expect(yuPacks).to eq [yuPack60, yuPack80, yuPack100]
      end
    end
  end

  describe "fx" do
    context "classarray" do
      it "self.classarrayがクラス変数の中身と等しい" do
        expect(Yupack.classarray).to eq [yuPack60, yuPack80, yuPack100]
      end
    end
  end

  describe "local_variable" do
    context "yuPack60" do
      before do
        yuPack60.titlename ="ゆうパック"
      end

      it "yuPack60のnameが正しい" do
        expect(yuPack60.name).to eq "ゆうパック60サイズ"
      end

      it "yuPack60のurlが正しい" do
        expect(yuPack60.url).to eq "/method/yuPack"
      end
      
      it "yuPack60のfeeが正しい" do
        expect(yuPack60.fee).to eq 700
      end

      it "yuPack60のboxが正しい" do
        expect(yuPack60.box).to eq 0
      end

      it "yuPack60のtypeが正しい" do
        expect(yuPack60.type).to eq "ゆうゆうメルカリ便"
      end

      it "yuPack60のanonymousが正しい" do
        expect(yuPack60.anonymous).to eq "○"
      end

      it "yuPack60のtrackingが正しい" do
        expect(yuPack60.tracking).to eq "○"
      end

      it "yuPack60のcompensationが正しい" do
        expect(yuPack60.compensation).to eq "○"
      end

      # it "yuPack60のlsideが正しい" do
      #   expect(yuPack60.lside).to eq 0
      # end

      # it "yuPack60のssideが正しい" do
      #   expect(yuPack60.sside).to eq 0
      # end

      # it "yuPack60のthicknessが正しい" do
      #   expect(yuPack60.thickness).to eq 0
      # end

      it "yuPack60のthreesidesが正しい" do
        expect(yuPack60.threesides).to eq 60
      end

      it "yuPack60のweightが正しい" do
        expect(yuPack60.weight).to eq 25000
      end

      it "yuPack60のtitlenameが正しい" do
        expect(yuPack60.titlename).to eq "ゆうパック"
      end
    end

    context "yuPack80" do

      it "yuPack80のnameが正しい" do
        expect(yuPack80.name).to eq "ゆうパック80サイズ"
      end

      it "yuPack80のurlが正しい" do
        expect(yuPack80.url).to eq "/method/yuPack"
      end
      
      it "yuPack80のfeeが正しい" do
        expect(yuPack80.fee).to eq 800
      end

      it "yuPack80のboxが正しい" do
        expect(yuPack80.box).to eq 0
      end

      it "yuPack80のtypeが正しい" do
        expect(yuPack80.type).to eq "ゆうゆうメルカリ便"
      end

      it "yuPack80のanonymousが正しい" do
        expect(yuPack80.anonymous).to eq "○"
      end

      it "yuPack80のtrackingが正しい" do
        expect(yuPack80.tracking).to eq "○"
      end

      it "yuPack80のcompensationが正しい" do
        expect(yuPack80.compensation).to eq "○"
      end

      # it "yuPack80のlsideが正しい" do
      #   expect(yuPack80.lside).to eq 0
      # end

      # it "yuPack80のssideが正しい" do
      #   expect(yuPack80.sside).to eq 0
      # end

      # it "yuPack80のthicknessが正しい" do
      #   expect(yuPack80.thickness).to eq 0
      # end

      it "yuPack80のthreesidesが正しい" do
        expect(yuPack80.threesides).to eq 80
      end

      it "yuPack80のweightが正しい" do
        expect(yuPack80.weight).to eq 25000
      end

      # it "yuPack80のtitlenameが正しい" do
      #   expect(yuPack80.titlename).to eq "-"
      # end
    end
    
    context "yuPack100" do

      it "yuPack100のnameが正しい" do
        expect(yuPack100.name).to eq "ゆうパック100サイズ"
      end

      it "yuPack100のurlが正しい" do
        expect(yuPack100.url).to eq "/method/yuPack"
      end
      
      it "yuPack100のfeeが正しい" do
        expect(yuPack100.fee).to eq 1000
      end

      it "yuPack100のboxが正しい" do
        expect(yuPack100.box).to eq 0
      end

      it "yuPack100のtypeが正しい" do
        expect(yuPack100.type).to eq "ゆうゆうメルカリ便"
      end

      it "yuPack100のanonymousが正しい" do
        expect(yuPack100.anonymous).to eq "○"
      end

      it "yuPack100のtrackingが正しい" do
        expect(yuPack100.tracking).to eq "○"
      end

      it "yuPack100のcompensationが正しい" do
        expect(yuPack100.compensation).to eq "○"
      end

      # it "yuPack100のlsideが正しい" do
      #   expect(yuPack100.lside).to eq 0
      # end

      # it "yuPack100のssideが正しい" do
      #   expect(yuPack100.sside).to eq 0
      # end

      # it "yuPack100のthicknessが正しい" do
      #   expect(yuPack100.thickness).to eq 0
      # end

      it "yuPack100のthreesidesが正しい" do
        expect(yuPack100.threesides).to eq 100
      end

      it "yuPack100のweightが正しい" do
        expect(yuPack100.weight).to eq 25000
      end

      # it "yuPack100のtitlenameが正しい" do
      #   expect(yuPack100.titlename).to eq "-"
      # end
    end
  end
end