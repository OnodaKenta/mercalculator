require_relative "spec_helper.rb"

RSpec.describe Takkyubin do
  let!(:takkyubins) {Takkyubin.class_variable_set(:@@takkyubins, [])}
  let(:takkyubin60) {Takkyubin.new(name: "宅急便60サイズ", fee: 700, threesides: 60, weight: 2000)}
  let(:takkyubin80) {Takkyubin.new(name: "宅急便80サイズ", fee: 800, threesides: 80, weight: 5000)}
  let(:takkyubin100) {Takkyubin.new(name: "宅急便100サイズ", fee: 1000, threesides: 100, weight: 10000)}
  let(:takkyubin120) {Takkyubin.new(name: "宅急便120サイズ", fee: 1100, threesides: 120, weight: 15000)}
  let(:takkyubin140) {Takkyubin.new(name: "宅急便140サイズ", fee: 1300, threesides: 140, weight: 20000)}
  let(:takkyubin160) {Takkyubin.new(name: "宅急便160サイズ", fee: 1600, threesides: 160, weight: 25000)}

  describe "class_variable" do
    context "@@takyubins" do
      it "@@takkyubinsが正しい" do
        expect(takkyubins).to eq [takkyubin60, takkyubin80, takkyubin100, takkyubin120, takkyubin140, takkyubin160]
      end
    end
  end

  describe "fx" do
    context "classarray" do
      it "self.classarrayがクラス変数の中身と等しい" do
        expect(Takkyubin.classarray).to eq [takkyubin60, takkyubin80, takkyubin100, takkyubin120, takkyubin140, takkyubin160]
      end
    end
  end

  describe "local_variable" do
    context "takkyubin60" do
      before do
        takkyubin60.titlename = "宅急便"
      end

      it "takkyubin60のnameが正しい" do
        expect(takkyubin60.name).to eq "宅急便60サイズ"
      end

      it "takkyubin60のurlが正しい" do
        expect(takkyubin60.url).to eq "/method/takkyubin"
      end
      
      it "takkyubin60のfeeが正しい" do
        expect(takkyubin60.fee).to eq 700
      end

      it "takkyubin60のboxが正しい" do
        expect(takkyubin60.box).to eq 0
      end

      it "takkyubin60のtypeが正しい" do
        expect(takkyubin60.type).to eq "らくらくメルカリ便"
      end

      it "takkyubin60のanonymousが正しい" do
        expect(takkyubin60.anonymous).to eq "○"
      end

      it "takkyubin60のtrackingが正しい" do
        expect(takkyubin60.tracking).to eq "○"
      end

      it "takkyubin60のcompensationが正しい" do
        expect(takkyubin60.compensation).to eq "○"
      end

      # it "takkyubin60のlsideが正しい" do
      #   expect(takkyubin60.lside).to eq 0
      # end

      # it "takkyubin60のssideが正しい" do
      #   expect(takkyubin60.sside).to eq 0
      # end

      # it "takkyubin60のthicknessが正しい" do
      #   expect(takkyubin60.thickness).to eq 0
      # end

      it "takkyubin60のthreesidesが正しい" do
        expect(takkyubin60.threesides).to eq 60
      end

      it "takkyubin60のweightが正しい" do
        expect(takkyubin60.weight).to eq 2000
      end

      it "takkyubin60のtitlenameが正しい" do
        expect(takkyubin60.titlename).to eq "宅急便"
      end
    end

    context "takkyubin80" do

      it "takkyubin80のnameが正しい" do
        expect(takkyubin80.name).to eq "宅急便80サイズ"
      end

      it "takkyubin80のurlが正しい" do
        expect(takkyubin80.url).to eq "/method/takkyubin"
      end
      
      it "takkyubin80のfeeが正しい" do
        expect(takkyubin80.fee).to eq 800
      end

      it "takkyubin80のboxが正しい" do
        expect(takkyubin80.box).to eq 0
      end

      it "takkyubin80のtypeが正しい" do
        expect(takkyubin80.type).to eq "らくらくメルカリ便"
      end

      it "takkyubin80のanonymousが正しい" do
        expect(takkyubin80.anonymous).to eq "○"
      end

      it "takkyubin80のtrackingが正しい" do
        expect(takkyubin80.tracking).to eq "○"
      end

      it "takkyubin80のcompensationが正しい" do
        expect(takkyubin80.compensation).to eq "○"
      end

      # it "takkyubin80のlsideが正しい" do
      #   expect(takkyubin80.lside).to eq 0
      # end

      # it "takkyubin80のssideが正しい" do
      #   expect(takkyubin80.sside).to eq 0
      # end

      # it "takkyubin80のthicknessが正しい" do
      #   expect(takkyubin80.thickness).to eq 0
      # end

      it "takkyubin80のthreesidesが正しい" do
        expect(takkyubin80.threesides).to eq 80
      end

      it "takkyubin80のweightが正しい" do
        expect(takkyubin80.weight).to eq 5000
      end

      # it "takkyubin80のtitlenameが正しい" do
      #   expect(takkyubin80.titlename).to eq "-"
      # end
    end

    context "takkyubin100" do

      it "takkyubin100のnameが正しい" do
        expect(takkyubin100.name).to eq "宅急便100サイズ"
      end

      it "takkyubin100のurlが正しい" do
        expect(takkyubin100.url).to eq "/method/takkyubin"
      end
      
      it "takkyubin100のfeeが正しい" do
        expect(takkyubin100.fee).to eq 1000
      end

      it "takkyubin100のboxが正しい" do
        expect(takkyubin100.box).to eq 0
      end

      it "takkyubin100のtypeが正しい" do
        expect(takkyubin100.type).to eq "らくらくメルカリ便"
      end

      it "takkyubin100のanonymousが正しい" do
        expect(takkyubin100.anonymous).to eq "○"
      end

      it "takkyubin100のtrackingが正しい" do
        expect(takkyubin100.tracking).to eq "○"
      end

      it "takkyubin100のcompensationが正しい" do
        expect(takkyubin100.compensation).to eq "○"
      end

      # it "takkyubin100のlsideが正しい" do
      #   expect(takkyubin100.lside).to eq 0
      # end

      # it "takkyubin100のssideが正しい" do
      #   expect(takkyubin100.sside).to eq 0
      # end

      # it "takkyubin100のthicknessが正しい" do
      #   expect(takkyubin100.thickness).to eq 0
      # end

      it "takkyubin100のthreesidesが正しい" do
        expect(takkyubin100.threesides).to eq 100
      end

      it "takkyubin100のweightが正しい" do
        expect(takkyubin100.weight).to eq 10000
      end

      # it "takkyubin100のtitlenameが正しい" do
      #   expect(takkyubin100.titlename).to eq "-"
      # end
    end

    context "takkyubin120" do

      it "takkyubin120のnameが正しい" do
        expect(takkyubin120.name).to eq "宅急便120サイズ"
      end

      it "takkyubin120のurlが正しい" do
        expect(takkyubin120.url).to eq "/method/takkyubin"
      end
      
      it "takkyubin120のfeeが正しい" do
        expect(takkyubin120.fee).to eq 1100
      end

      it "takkyubin120のboxが正しい" do
        expect(takkyubin120.box).to eq 0
      end

      it "takkyubin120のtypeが正しい" do
        expect(takkyubin120.type).to eq "らくらくメルカリ便"
      end

      it "takkyubin120のanonymousが正しい" do
        expect(takkyubin120.anonymous).to eq "○"
      end

      it "takkyubin120のtrackingが正しい" do
        expect(takkyubin120.tracking).to eq "○"
      end

      it "takkyubin120のcompensationが正しい" do
        expect(takkyubin120.compensation).to eq "○"
      end

      # it "takkyubin120のlsideが正しい" do
      #   expect(takkyubin120.lside).to eq 0
      # end

      # it "takkyubin120のssideが正しい" do
      #   expect(takkyubin120.sside).to eq 0
      # end

      # it "takkyubin120のthicknessが正しい" do
      #   expect(takkyubin120.thickness).to eq 0
      # end

      it "takkyubin120のthreesidesが正しい" do
        expect(takkyubin120.threesides).to eq 120
      end

      it "takkyubin120のweightが正しい" do
        expect(takkyubin120.weight).to eq 15000
      end

      # it "takkyubin120のtitlenameが正しい" do
      #   expect(takkyubin120.titlename).to eq "-"
      # end
    end

    context "takkyubin140" do

      it "takkyubin140のnameが正しい" do
        expect(takkyubin140.name).to eq "宅急便140サイズ"
      end

      it "takkyubin140のurlが正しい" do
        expect(takkyubin140.url).to eq "/method/takkyubin"
      end
      
      it "takkyubin140のfeeが正しい" do
        expect(takkyubin140.fee).to eq 1300
      end

      it "takkyubin140のboxが正しい" do
        expect(takkyubin140.box).to eq 0
      end

      it "takkyubin140のtypeが正しい" do
        expect(takkyubin140.type).to eq "らくらくメルカリ便"
      end

      it "takkyubin140のanonymousが正しい" do
        expect(takkyubin140.anonymous).to eq "○"
      end

      it "takkyubin140のtrackingが正しい" do
        expect(takkyubin140.tracking).to eq "○"
      end

      it "takkyubin140のcompensationが正しい" do
        expect(takkyubin140.compensation).to eq "○"
      end

      # it "takkyubin140のlsideが正しい" do
      #   expect(takkyubin140.lside).to eq 0
      # end

      # it "takkyubin140のssideが正しい" do
      #   expect(takkyubin140.sside).to eq 0
      # end

      # it "takkyubin140のthicknessが正しい" do
      #   expect(takkyubin140.thickness).to eq 0
      # end

      it "takkyubin140のthreesidesが正しい" do
        expect(takkyubin140.threesides).to eq 140
      end

      it "takkyubin140のweightが正しい" do
        expect(takkyubin140.weight).to eq 20000
      end

      # it "takkyubin140のtitlenameが正しい" do
      #   expect(takkyubin140.titlename).to eq "-"
      # end
    end

    context "takkyubin160" do

      it "takkyubin160のnameが正しい" do
        expect(takkyubin160.name).to eq "宅急便160サイズ"
      end

      it "takkyubin160のurlが正しい" do
        expect(takkyubin160.url).to eq "/method/takkyubin"
      end
      
      it "takkyubin160のfeeが正しい" do
        expect(takkyubin160.fee).to eq 1600
      end

      it "takkyubin160のboxが正しい" do
        expect(takkyubin160.box).to eq 0
      end

      it "takkyubin160のtypeが正しい" do
        expect(takkyubin160.type).to eq "らくらくメルカリ便"
      end

      it "takkyubin160のanonymousが正しい" do
        expect(takkyubin160.anonymous).to eq "○"
      end

      it "takkyubin160のtrackingが正しい" do
        expect(takkyubin160.tracking).to eq "○"
      end

      it "takkyubin160のcompensationが正しい" do
        expect(takkyubin160.compensation).to eq "○"
      end

      # it "takkyubin160のlsideが正しい" do
      #   expect(takkyubin160.lside).to eq 0
      # end

      # it "takkyubin160のssideが正しい" do
      #   expect(takkyubin160.sside).to eq 0
      # end

      # it "takkyubin160のthicknessが正しい" do
      #   expect(takkyubin160.thickness).to eq 0
      # end

      it "takkyubin160のthreesidesが正しい" do
        expect(takkyubin160.threesides).to eq 160
      end

      it "takkyubin160のweightが正しい" do
        expect(takkyubin160.weight).to eq 25000
      end

      # it "takkyubin160のtitlenameが正しい" do
      #   expect(takkyubin160.titlename).to eq "-"
      # end
    end
  end
end