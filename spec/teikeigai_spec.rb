require_relative "spec_helper.rb"

RSpec.describe TeikeigaiStandard do
  let!(:teikeigaistandards) {TeikeigaiStandard.class_variable_set(:@@teikeigaistandards, [])}
  let(:teikeigaistandard50) {TeikeigaiStandard.new(fee: 120, weight: 50)}
  let(:teikeigaistandard100) {TeikeigaiStandard.new(fee: 140, weight: 100)}
  let(:teikeigaistandard150) {TeikeigaiStandard.new(fee: 210, weight: 150)}
  let(:teikeigaistandard250) {TeikeigaiStandard.new(fee: 250, weight: 250)}
  let(:teikeigaistandard500) {TeikeigaiStandard.new(fee: 390, weight: 500)}
  let(:teikeigaistandard1000) {TeikeigaiStandard.new(fee: 580, weight: 1000)}

  describe "class_variable" do
    context "@@teikeigaistandards" do
      it "@@teikeigaistandardsが正しい" do
        expect(teikeigaistandards).to eq [teikeigaistandard50, teikeigaistandard100, teikeigaistandard150, teikeigaistandard250, teikeigaistandard500, teikeigaistandard1000]
      end
    end
  end

  describe "fx" do
    context "classarray" do
      it "self.classarrayがクラス変数の中身と等しい" do
        expect(TeikeigaiStandard.classarray).to eq [teikeigaistandard50, teikeigaistandard100, teikeigaistandard150, teikeigaistandard250, teikeigaistandard500, teikeigaistandard1000]
      end
    end
  end

  describe "local_variable" do
    context "teikeigaistandard50" do
      before do
        teikeigaistandard50.titlename = "定形外郵便"
      end

      it "teikeigaistandard50のnameが正しい" do
        expect(teikeigaistandard50.name).to eq "定形外郵便 規格内"
      end

      it "teikeigaistandard50のurlが正しい" do
        expect(teikeigaistandard50.url).to eq "/method/teikeigai"
      end
      
      it "teikeigaistandard50のfeeが正しい" do
        expect(teikeigaistandard50.fee).to eq 120
      end

      it "teikeigaistandard50のboxが正しい" do
        expect(teikeigaistandard50.box).to eq 0
      end

      it "teikeigaistandard50のtypeが正しい" do
        expect(teikeigaistandard50.type).to eq "日本郵便"
      end

      it "teikeigaistandard50のanonymousが正しい" do
        expect(teikeigaistandard50.anonymous).to eq "×"
      end

      it "teikeigaistandard50のtrackingが正しい" do
        expect(teikeigaistandard50.tracking).to eq "×"
      end

      it "teikeigaistandard50のcompensationが正しい" do
        expect(teikeigaistandard50.compensation).to eq "×"
      end

      it "teikeigaistandard50のlsideが正しい" do
        expect(teikeigaistandard50.lside).to eq 34
      end

      it "teikeigaistandard50のssideが正しい" do
        expect(teikeigaistandard50.sside).to eq 25
      end

      it "teikeigaistandard50のthicknessが正しい" do
        expect(teikeigaistandard50.thickness).to eq 3
      end

      # it "teikeigaistandard50のthreesidesが正しい" do
      #   expect(teikeigaistandard50.threesides).to eq 0
      # end

      it "teikeigaistandard50のweightが正しい" do
        expect(teikeigaistandard50.weight).to eq 50
      end

      it "teikeigaistandard50のtitlenameが正しい" do
        expect(teikeigaistandard50.titlename).to eq "定形外郵便"
      end
    end

    context "teikeigaistandard100" do

      it "teikeigaistandard100のnameが正しい" do
        expect(teikeigaistandard100.name).to eq "定形外郵便 規格内"
      end

      it "teikeigaistandard100のurlが正しい" do
        expect(teikeigaistandard100.url).to eq "/method/teikeigai"
      end
      
      it "teikeigaistandard100のfeeが正しい" do
        expect(teikeigaistandard100.fee).to eq 140
      end

      it "teikeigaistandard100のboxが正しい" do
        expect(teikeigaistandard100.box).to eq 0
      end

      it "teikeigaistandard100のtypeが正しい" do
        expect(teikeigaistandard100.type).to eq "日本郵便"
      end

      it "teikeigaistandard100のanonymousが正しい" do
        expect(teikeigaistandard100.anonymous).to eq "×"
      end

      it "teikeigaistandard100のtrackingが正しい" do
        expect(teikeigaistandard100.tracking).to eq "×"
      end

      it "teikeigaistandard100のcompensationが正しい" do
        expect(teikeigaistandard100.compensation).to eq "×"
      end

      it "teikeigaistandard100のlsideが正しい" do
        expect(teikeigaistandard100.lside).to eq 34
      end

      it "teikeigaistandard100のssideが正しい" do
        expect(teikeigaistandard100.sside).to eq 25
      end

      it "teikeigaistandard100のthicknessが正しい" do
        expect(teikeigaistandard100.thickness).to eq 3
      end

      # it "teikeigaistandard100のthreesidesが正しい" do
      #   expect(teikeigaistandard100.threesides).to eq 0
      # end

      it "teikeigaistandard100のweightが正しい" do
        expect(teikeigaistandard100.weight).to eq 100
      end

      # it "teikeigaistandard100のtitlenameが正しい" do
      #   expect(teikeigaistandard100.titlename).to eq "-"
      # end
    end

    context "teikeigaistandard150" do

      it "teikeigaistandard150のnameが正しい" do
        expect(teikeigaistandard150.name).to eq "定形外郵便 規格内"
      end

      it "teikeigaistandard150のurlが正しい" do
        expect(teikeigaistandard150.url).to eq "/method/teikeigai"
      end
      
      it "teikeigaistandard150のfeeが正しい" do
        expect(teikeigaistandard150.fee).to eq 210
      end

      it "teikeigaistandard150のboxが正しい" do
        expect(teikeigaistandard150.box).to eq 0
      end

      it "teikeigaistandard150のtypeが正しい" do
        expect(teikeigaistandard150.type).to eq "日本郵便"
      end

      it "teikeigaistandard150のanonymousが正しい" do
        expect(teikeigaistandard150.anonymous).to eq "×"
      end

      it "teikeigaistandard150のtrackingが正しい" do
        expect(teikeigaistandard150.tracking).to eq "×"
      end

      it "teikeigaistandard150のcompensationが正しい" do
        expect(teikeigaistandard150.compensation).to eq "×"
      end

      it "teikeigaistandard150のlsideが正しい" do
        expect(teikeigaistandard150.lside).to eq 34
      end

      it "teikeigaistandard150のssideが正しい" do
        expect(teikeigaistandard150.sside).to eq 25
      end

      it "teikeigaistandard150のthicknessが正しい" do
        expect(teikeigaistandard150.thickness).to eq 3
      end

      # it "teikeigaistandard150のthreesidesが正しい" do
      #   expect(teikeigaistandard150.threesides).to eq 0
      # end

      it "teikeigaistandard150のweightが正しい" do
        expect(teikeigaistandard150.weight).to eq 150
      end

      # it "teikeigaistandard150のtitlenameが正しい" do
      #   expect(teikeigaistandard150.titlename).to eq "-"
      # end
    end

    context "teikeigaistandard250" do

      it "teikeigaistandard250のnameが正しい" do
        expect(teikeigaistandard250.name).to eq "定形外郵便 規格内"
      end

      it "teikeigaistandard250のurlが正しい" do
        expect(teikeigaistandard250.url).to eq "/method/teikeigai"
      end
      
      it "teikeigaistandard250のfeeが正しい" do
        expect(teikeigaistandard250.fee).to eq 250
      end

      it "teikeigaistandard250のboxが正しい" do
        expect(teikeigaistandard250.box).to eq 0
      end

      it "teikeigaistandard250のtypeが正しい" do
        expect(teikeigaistandard250.type).to eq "日本郵便"
      end

      it "teikeigaistandard250のanonymousが正しい" do
        expect(teikeigaistandard250.anonymous).to eq "×"
      end

      it "teikeigaistandard250のtrackingが正しい" do
        expect(teikeigaistandard250.tracking).to eq "×"
      end

      it "teikeigaistandard250のcompensationが正しい" do
        expect(teikeigaistandard250.compensation).to eq "×"
      end

      it "teikeigaistandard250のlsideが正しい" do
        expect(teikeigaistandard250.lside).to eq 34
      end

      it "teikeigaistandard250のssideが正しい" do
        expect(teikeigaistandard250.sside).to eq 25
      end

      it "teikeigaistandard250のthicknessが正しい" do
        expect(teikeigaistandard250.thickness).to eq 3
      end

      # it "teikeigaistandard250のthreesidesが正しい" do
      #   expect(teikeigaistandard250.threesides).to eq 0
      # end

      it "teikeigaistandard250のweightが正しい" do
        expect(teikeigaistandard250.weight).to eq 250
      end

      # it "teikeigaistandard250のtitlenameが正しい" do
      #   expect(teikeigaistandard250.titlename).to eq "-"
      # end
    end

    context "teikeigaistandard500" do

      it "teikeigaistandard500のnameが正しい" do
        expect(teikeigaistandard500.name).to eq "定形外郵便 規格内"
      end

      it "teikeigaistandard500のurlが正しい" do
        expect(teikeigaistandard500.url).to eq "/method/teikeigai"
      end
      
      it "teikeigaistandard500のfeeが正しい" do
        expect(teikeigaistandard500.fee).to eq 390
      end

      it "teikeigaistandard500のboxが正しい" do
        expect(teikeigaistandard500.box).to eq 0
      end

      it "teikeigaistandard500のtypeが正しい" do
        expect(teikeigaistandard500.type).to eq "日本郵便"
      end

      it "teikeigaistandard500のanonymousが正しい" do
        expect(teikeigaistandard500.anonymous).to eq "×"
      end

      it "teikeigaistandard500のtrackingが正しい" do
        expect(teikeigaistandard500.tracking).to eq "×"
      end

      it "teikeigaistandard500のcompensationが正しい" do
        expect(teikeigaistandard500.compensation).to eq "×"
      end

      it "teikeigaistandard500のlsideが正しい" do
        expect(teikeigaistandard500.lside).to eq 34
      end

      it "teikeigaistandard500のssideが正しい" do
        expect(teikeigaistandard500.sside).to eq 25
      end

      it "teikeigaistandard500のthicknessが正しい" do
        expect(teikeigaistandard500.thickness).to eq 3
      end

      # it "teikeigaistandard500のthreesidesが正しい" do
      #   expect(teikeigaistandard500.threesides).to eq 0
      # end

      it "teikeigaistandard500のweightが正しい" do
        expect(teikeigaistandard500.weight).to eq 500
      end

      # it "teikeigaistandard500のtitlenameが正しい" do
      #   expect(teikeigaistandard500.titlename).to eq "-"
      # end
    end

    context "teikeigaistandard500" do

      it "teikeigaistandard500のnameが正しい" do
        expect(teikeigaistandard500.name).to eq "定形外郵便 規格内"
      end

      it "teikeigaistandard500のurlが正しい" do
        expect(teikeigaistandard500.url).to eq "/method/teikeigai"
      end
      
      it "teikeigaistandard500のfeeが正しい" do
        expect(teikeigaistandard500.fee).to eq 390
      end

      it "teikeigaistandard500のboxが正しい" do
        expect(teikeigaistandard500.box).to eq 0
      end

      it "teikeigaistandard500のtypeが正しい" do
        expect(teikeigaistandard500.type).to eq "日本郵便"
      end

      it "teikeigaistandard500のanonymousが正しい" do
        expect(teikeigaistandard500.anonymous).to eq "×"
      end

      it "teikeigaistandard500のtrackingが正しい" do
        expect(teikeigaistandard500.tracking).to eq "×"
      end

      it "teikeigaistandard500のcompensationが正しい" do
        expect(teikeigaistandard500.compensation).to eq "×"
      end

      it "teikeigaistandard500のlsideが正しい" do
        expect(teikeigaistandard500.lside).to eq 34
      end

      it "teikeigaistandard500のssideが正しい" do
        expect(teikeigaistandard500.sside).to eq 25
      end

      it "teikeigaistandard500のthicknessが正しい" do
        expect(teikeigaistandard500.thickness).to eq 3
      end

      # it "teikeigaistandard500のthreesidesが正しい" do
      #   expect(teikeigaistandard500.threesides).to eq 0
      # end

      it "teikeigaistandard500のweightが正しい" do
        expect(teikeigaistandard500.weight).to eq 500
      end

      # it "teikeigaistandard500のtitlenameが正しい" do
      #   expect(teikeigaistandard500.titlename).to eq "-"
      # end
    end

    context "teikeigaistandard1000" do

      it "teikeigaistandard1000のnameが正しい" do
        expect(teikeigaistandard1000.name).to eq "定形外郵便 規格内"
      end

      it "teikeigaistandard1000のurlが正しい" do
        expect(teikeigaistandard1000.url).to eq "/method/teikeigai"
      end
      
      it "teikeigaistandard1000のfeeが正しい" do
        expect(teikeigaistandard1000.fee).to eq 580
      end

      it "teikeigaistandard1000のboxが正しい" do
        expect(teikeigaistandard1000.box).to eq 0
      end

      it "teikeigaistandard1000のtypeが正しい" do
        expect(teikeigaistandard1000.type).to eq "日本郵便"
      end

      it "teikeigaistandard1000のanonymousが正しい" do
        expect(teikeigaistandard1000.anonymous).to eq "×"
      end

      it "teikeigaistandard1000のtrackingが正しい" do
        expect(teikeigaistandard1000.tracking).to eq "×"
      end

      it "teikeigaistandard1000のcompensationが正しい" do
        expect(teikeigaistandard1000.compensation).to eq "×"
      end

      it "teikeigaistandard1000のlsideが正しい" do
        expect(teikeigaistandard1000.lside).to eq 34
      end

      it "teikeigaistandard1000のssideが正しい" do
        expect(teikeigaistandard1000.sside).to eq 25
      end

      it "teikeigaistandard1000のthicknessが正しい" do
        expect(teikeigaistandard1000.thickness).to eq 3
      end

      # it "teikeigaistandard1000のthreesidesが正しい" do
      #   expect(teikeigaistandard1000.threesides).to eq 0
      # end

      it "teikeigaistandard1000のweightが正しい" do
        expect(teikeigaistandard1000.weight).to eq 1000
      end

      # it "teikeigaistandard1000のtitlenameが正しい" do
      #   expect(teikeigaistandard1000.titlename).to eq "-"
      # end
    end
  end
end