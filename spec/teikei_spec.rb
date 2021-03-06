require_relative "spec_helper.rb"

RSpec.describe Teikei do
  let!(:teikeis) {Teikei.class_variable_set(:@@teikeis, [])}
  let(:teikei25) {Teikei.new(fee: 84, weight: 25)}
  let(:teikei50) {Teikei.new(fee: 94, weight: 50)}

  describe "class_variable" do
    context "@@teikeis" do
      it "@@teikeisが正しい" do
        expect(teikeis).to eq [teikei25, teikei50]
      end
    end
  end

  describe "fx" do
    context "classarray" do
      it "self.classarrayがクラス変数の中身と等しい" do
        expect(Teikei.classarray).to eq [teikei25, teikei50]
      end
    end
  end

  describe "local_variable" do
    context "teikei25" do

      it "teikei25のnameが正しい" do
        expect(teikei25.name).to eq "定形郵便"
      end

      it "teikei25のurlが正しい" do
        expect(teikei25.url).to eq "/method/teikei"
      end
      
      it "teikei25のfeeが正しい" do
        expect(teikei25.fee).to eq 84
      end

      it "teikei25のboxが正しい" do
        expect(teikei25.box).to eq 0
      end

      it "teikei25のtypeが正しい" do
        expect(teikei25.type).to eq "日本郵便"
      end

      it "teikei25のanonymousが正しい" do
        expect(teikei25.anonymous).to eq "×"
      end

      it "teikei25のtrackingが正しい" do
        expect(teikei25.tracking).to eq "×"
      end

      it "teikei25のcompensationが正しい" do
        expect(teikei25.compensation).to eq "×"
      end

      it "teikei25のlsideが正しい" do
        expect(teikei25.lside).to eq 23.5
      end

      it "teikei25のssideが正しい" do
        expect(teikei25.sside).to eq 12
      end

      it "teikei25のthicknessが正しい" do
        expect(teikei25.thickness).to eq 1
      end

      # it "teikei25のthreesidesが正しい" do
      #   expect(teikei25.threesides).to eq 0
      # end

      it "teikei25のweightが正しい" do
        expect(teikei25.weight).to eq 25
      end

      # it "teikei25のtitlenameが正しい" do
      #   expect(teikei25.titlename).to eq "-"
      # end
    end

    context "teikei50" do

      it "teikei50のnameが正しい" do
        expect(teikei50.name).to eq "定形郵便"
      end

      it "teikei50のurlが正しい" do
        expect(teikei50.url).to eq "/method/teikei"
      end
      
      it "teikei50のfeeが正しい" do
        expect(teikei50.fee).to eq 94
      end

      it "teikei50のboxが正しい" do
        expect(teikei50.box).to eq 0
      end

      it "teikei50のtypeが正しい" do
        expect(teikei50.type).to eq "日本郵便"
      end

      it "teikei50のanonymousが正しい" do
        expect(teikei50.anonymous).to eq "×"
      end

      it "teikei50のtrackingが正しい" do
        expect(teikei50.tracking).to eq "×"
      end

      it "teikei50のcompensationが正しい" do
        expect(teikei50.compensation).to eq "×"
      end

      it "teikei50のlsideが正しい" do
        expect(teikei50.lside).to eq 23.5
      end

      it "teikei50のssideが正しい" do
        expect(teikei50.sside).to eq 12
      end

      it "teikei50のthicknessが正しい" do
        expect(teikei50.thickness).to eq 1
      end

      # it "teikei50のthreesidesが正しい" do
      #   expect(teikei50.threesides).to eq 0
      # end

      it "teikei50のweightが正しい" do
        expect(teikei50.weight).to eq 50
      end

      # it "teikei50のtitlenameが正しい" do
      #   expect(teikei50.titlename).to eq "-"
      # end
    end
  end
end