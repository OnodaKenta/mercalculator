require_relative "spec_helper.rb"

RSpec.describe Tanomerubin do
  let!(:tanomerubins) {Tanomerubin.class_variable_set(:@@tanomerubins, [])}
  let(:tanomerubin80) {Tanomerubin.new(name: "梱包・発送たのメル便80サイズ", fee: 1700, threesides: 80)}
  let(:tanomerubin120) {Tanomerubin.new(name: "梱包・発送たのメル便120サイズ", fee: 2400, threesides: 120)}
  let(:tanomerubin160) {Tanomerubin.new(name: "梱包・発送たのメル便160サイズ", fee: 3400, threesides: 160)}
  let(:tanomerubin200) {Tanomerubin.new(name: "梱包・発送たのメル便200サイズ", fee: 5000, threesides: 200)}
  let(:tanomerubin250) {Tanomerubin.new(name: "梱包・発送たのメル便250サイズ", fee: 8600, threesides: 250)}
  let(:tanomerubin300) {Tanomerubin.new(name: "梱包・発送たのメル便300サイズ", fee: 12000, threesides: 300)}
  let(:tanomerubin350) {Tanomerubin.new(name: "梱包・発送たのメル便350サイズ", fee: 18500, threesides: 350)}
  let(:tanomerubin400) {Tanomerubin.new(name: "梱包・発送たのメル便400サイズ", fee: 25400, threesides: 400)}
  let(:tanomerubin450) {Tanomerubin.new(name: "梱包・発送たのメル便450サイズ", fee: 33000, threesides: 450)}

  describe "class_variable" do
    context "@@tanomerubins" do
      it "@@tanomerubinsが正しい" do
        expect(tanomerubins).to eq [tanomerubin80, tanomerubin120, tanomerubin160, tanomerubin200, tanomerubin250, tanomerubin300, tanomerubin350, tanomerubin400, tanomerubin450]
      end
    end
  end

  describe "fx" do
    context "classarray" do
      it "self.classarrayがクラス変数の中身と等しい" do
        expect(Tanomerubin.classarray).to eq [tanomerubin80, tanomerubin120, tanomerubin160, tanomerubin200, tanomerubin250, tanomerubin300, tanomerubin350, tanomerubin400, tanomerubin450]
      end
    end
  end

  describe "local_variable" do
    context "tanomerubin80" do
      before do
        tanomerubin80.titlename = "梱包・発送たのメル便"
      end

      it "tanomerubin80のnameが正しい" do
        expect(tanomerubin80.name).to eq "梱包・発送たのメル便80サイズ"
      end

      it "tanomerubin80のurlが正しい" do
        expect(tanomerubin80.url).to eq "/method/tanomerubin"
      end
      
      it "tanomerubin80のfeeが正しい" do
        expect(tanomerubin80.fee).to eq 1700
      end

      it "tanomerubin80のboxが正しい" do
        expect(tanomerubin80.box).to eq 0
      end

      it "tanomerubin80のtypeが正しい" do
        expect(tanomerubin80.type).to eq "梱包・発送たのメル便"
      end

      it "tanomerubin80のanonymousが正しい" do
        expect(tanomerubin80.anonymous).to eq "○"
      end

      it "tanomerubin80のtrackingが正しい" do
        expect(tanomerubin80.tracking).to eq "○"
      end

      it "tanomerubin80のcompensationが正しい" do
        expect(tanomerubin80.compensation).to eq "○"
      end

      it "tanomerubin80のlsideが正しい" do
        expect(tanomerubin80.lside).to eq 250
      end

      # it "tanomerubin80のssideが正しい" do
      #   expect(tanomerubin80.sside).to eq 0
      # end

      # it "tanomerubin80のthicknessが正しい" do
      #   expect(tanomerubin80.thickness).to eq 0
      # end

      it "tanomerubin80のthreesidesが正しい" do
        expect(tanomerubin80.threesides).to eq 80
      end

      it "tanomerubin80のweightが正しい" do
        expect(tanomerubin80.weight).to eq 150000
      end

      it "tanomerubin80のtitlenameが正しい" do
        expect(tanomerubin80.titlename).to eq "梱包・発送たのメル便"
      end
    end

    context "tanomerubin120" do

      it "tanomerubin120のnameが正しい" do
        expect(tanomerubin120.name).to eq "梱包・発送たのメル便120サイズ"
      end

      it "tanomerubin120のurlが正しい" do
        expect(tanomerubin120.url).to eq "/method/tanomerubin"
      end
      
      it "tanomerubin120のfeeが正しい" do
        expect(tanomerubin120.fee).to eq 2400
      end

      it "tanomerubin120のboxが正しい" do
        expect(tanomerubin120.box).to eq 0
      end

      it "tanomerubin120のtypeが正しい" do
        expect(tanomerubin120.type).to eq "梱包・発送たのメル便"
      end

      it "tanomerubin120のanonymousが正しい" do
        expect(tanomerubin120.anonymous).to eq "○"
      end

      it "tanomerubin120のtrackingが正しい" do
        expect(tanomerubin120.tracking).to eq "○"
      end

      it "tanomerubin120のcompensationが正しい" do
        expect(tanomerubin120.compensation).to eq "○"
      end

      it "tanomerubin120のlsideが正しい" do
        expect(tanomerubin120.lside).to eq 250
      end

      # it "tanomerubin120のssideが正しい" do
      #   expect(tanomerubin120.sside).to eq 0
      # end

      # it "tanomerubin120のthicknessが正しい" do
      #   expect(tanomerubin120.thickness).to eq 0
      # end

      it "tanomerubin120のthreesidesが正しい" do
        expect(tanomerubin120.threesides).to eq 120
      end

      it "tanomerubin120のweightが正しい" do
        expect(tanomerubin120.weight).to eq 150000
      end

      # it "tanomerubin120のtitlenameが正しい" do
      #   expect(tanomerubin120.titlename).to eq "-"
      # end
    end

    context "tanomerubin160" do

      it "tanomerubin160のnameが正しい" do
        expect(tanomerubin160.name).to eq "梱包・発送たのメル便160サイズ"
      end

      it "tanomerubin160のurlが正しい" do
        expect(tanomerubin160.url).to eq "/method/tanomerubin"
      end
      
      it "tanomerubin160のfeeが正しい" do
        expect(tanomerubin160.fee).to eq 3400
      end

      it "tanomerubin160のboxが正しい" do
        expect(tanomerubin160.box).to eq 0
      end

      it "tanomerubin160のtypeが正しい" do
        expect(tanomerubin160.type).to eq "梱包・発送たのメル便"
      end

      it "tanomerubin160のanonymousが正しい" do
        expect(tanomerubin160.anonymous).to eq "○"
      end

      it "tanomerubin160のtrackingが正しい" do
        expect(tanomerubin160.tracking).to eq "○"
      end

      it "tanomerubin160のcompensationが正しい" do
        expect(tanomerubin160.compensation).to eq "○"
      end

      it "tanomerubin160のlsideが正しい" do
        expect(tanomerubin160.lside).to eq 250
      end

      # it "tanomerubin160のssideが正しい" do
      #   expect(tanomerubin160.sside).to eq 0
      # end

      # it "tanomerubin160のthicknessが正しい" do
      #   expect(tanomerubin160.thickness).to eq 0
      # end

      it "tanomerubin160のthreesidesが正しい" do
        expect(tanomerubin160.threesides).to eq 160
      end

      it "tanomerubin160のweightが正しい" do
        expect(tanomerubin160.weight).to eq 150000
      end

      # it "tanomerubin160のtitlenameが正しい" do
      #   expect(tanomerubin160.titlename).to eq "-"
      # end
    end

    context "tanomerubin200" do

      it "tanomerubin200のnameが正しい" do
        expect(tanomerubin200.name).to eq "梱包・発送たのメル便200サイズ"
      end

      it "tanomerubin200のurlが正しい" do
        expect(tanomerubin200.url).to eq "/method/tanomerubin"
      end
      
      it "tanomerubin200のfeeが正しい" do
        expect(tanomerubin200.fee).to eq 5000
      end

      it "tanomerubin200のboxが正しい" do
        expect(tanomerubin200.box).to eq 0
      end

      it "tanomerubin200のtypeが正しい" do
        expect(tanomerubin200.type).to eq "梱包・発送たのメル便"
      end

      it "tanomerubin200のanonymousが正しい" do
        expect(tanomerubin200.anonymous).to eq "○"
      end

      it "tanomerubin200のtrackingが正しい" do
        expect(tanomerubin200.tracking).to eq "○"
      end

      it "tanomerubin200のcompensationが正しい" do
        expect(tanomerubin200.compensation).to eq "○"
      end

      it "tanomerubin200のlsideが正しい" do
        expect(tanomerubin200.lside).to eq 250
      end

      # it "tanomerubin200のssideが正しい" do
      #   expect(tanomerubin200.sside).to eq 0
      # end

      # it "tanomerubin200のthicknessが正しい" do
      #   expect(tanomerubin200.thickness).to eq 0
      # end

      it "tanomerubin200のthreesidesが正しい" do
        expect(tanomerubin200.threesides).to eq 200
      end

      it "tanomerubin200のweightが正しい" do
        expect(tanomerubin200.weight).to eq 150000
      end

      # it "tanomerubin200のtitlenameが正しい" do
      #   expect(tanomerubin200.titlename).to eq "-"
      # end
    end

    context "tanomerubin250" do

      it "tanomerubin250のnameが正しい" do
        expect(tanomerubin250.name).to eq "梱包・発送たのメル便250サイズ"
      end

      it "tanomerubin250のurlが正しい" do
        expect(tanomerubin250.url).to eq "/method/tanomerubin"
      end
      
      it "tanomerubin250のfeeが正しい" do
        expect(tanomerubin250.fee).to eq 8600
      end

      it "tanomerubin250のboxが正しい" do
        expect(tanomerubin250.box).to eq 0
      end

      it "tanomerubin250のtypeが正しい" do
        expect(tanomerubin250.type).to eq "梱包・発送たのメル便"
      end

      it "tanomerubin250のanonymousが正しい" do
        expect(tanomerubin250.anonymous).to eq "○"
      end

      it "tanomerubin250のtrackingが正しい" do
        expect(tanomerubin250.tracking).to eq "○"
      end

      it "tanomerubin250のcompensationが正しい" do
        expect(tanomerubin250.compensation).to eq "○"
      end

      it "tanomerubin250のlsideが正しい" do
        expect(tanomerubin250.lside).to eq 250
      end

      # it "tanomerubin250のssideが正しい" do
      #   expect(tanomerubin250.sside).to eq 0
      # end

      # it "tanomerubin250のthicknessが正しい" do
      #   expect(tanomerubin250.thickness).to eq 0
      # end

      it "tanomerubin250のthreesidesが正しい" do
        expect(tanomerubin250.threesides).to eq 250
      end

      it "tanomerubin250のweightが正しい" do
        expect(tanomerubin250.weight).to eq 150000
      end

      # it "tanomerubin250のtitlenameが正しい" do
      #   expect(tanomerubin250.titlename).to eq "-"
      # end
    end

    context "tanomerubin300" do

      it "tanomerubin300のnameが正しい" do
        expect(tanomerubin300.name).to eq "梱包・発送たのメル便300サイズ"
      end

      it "tanomerubin300のurlが正しい" do
        expect(tanomerubin300.url).to eq "/method/tanomerubin"
      end
      
      it "tanomerubin300のfeeが正しい" do
        expect(tanomerubin300.fee).to eq 12000
      end

      it "tanomerubin300のboxが正しい" do
        expect(tanomerubin300.box).to eq 0
      end

      it "tanomerubin300のtypeが正しい" do
        expect(tanomerubin300.type).to eq "梱包・発送たのメル便"
      end

      it "tanomerubin300のanonymousが正しい" do
        expect(tanomerubin300.anonymous).to eq "○"
      end

      it "tanomerubin300のtrackingが正しい" do
        expect(tanomerubin300.tracking).to eq "○"
      end

      it "tanomerubin300のcompensationが正しい" do
        expect(tanomerubin300.compensation).to eq "○"
      end

      it "tanomerubin300のlsideが正しい" do
        expect(tanomerubin300.lside).to eq 250
      end

      # it "tanomerubin300のssideが正しい" do
      #   expect(tanomerubin300.sside).to eq 0
      # end

      # it "tanomerubin300のthicknessが正しい" do
      #   expect(tanomerubin300.thickness).to eq 0
      # end

      it "tanomerubin300のthreesidesが正しい" do
        expect(tanomerubin300.threesides).to eq 300
      end

      it "tanomerubin300のweightが正しい" do
        expect(tanomerubin300.weight).to eq 150000
      end

      # it "tanomerubin300のtitlenameが正しい" do
      #   expect(tanomerubin300.titlename).to eq "-"
      # end
    end

    context "tanomerubin350" do

      it "tanomerubin350のnameが正しい" do
        expect(tanomerubin350.name).to eq "梱包・発送たのメル便350サイズ"
      end

      it "tanomerubin350のurlが正しい" do
        expect(tanomerubin350.url).to eq "/method/tanomerubin"
      end
      
      it "tanomerubin350のfeeが正しい" do
        expect(tanomerubin350.fee).to eq 18500
      end

      it "tanomerubin350のboxが正しい" do
        expect(tanomerubin350.box).to eq 0
      end

      it "tanomerubin350のtypeが正しい" do
        expect(tanomerubin350.type).to eq "梱包・発送たのメル便"
      end

      it "tanomerubin350のanonymousが正しい" do
        expect(tanomerubin350.anonymous).to eq "○"
      end

      it "tanomerubin350のtrackingが正しい" do
        expect(tanomerubin350.tracking).to eq "○"
      end

      it "tanomerubin350のcompensationが正しい" do
        expect(tanomerubin350.compensation).to eq "○"
      end

      it "tanomerubin350のlsideが正しい" do
        expect(tanomerubin350.lside).to eq 250
      end

      # it "tanomerubin350のssideが正しい" do
      #   expect(tanomerubin350.sside).to eq 0
      # end

      # it "tanomerubin350のthicknessが正しい" do
      #   expect(tanomerubin350.thickness).to eq 0
      # end

      it "tanomerubin350のthreesidesが正しい" do
        expect(tanomerubin350.threesides).to eq 350
      end

      it "tanomerubin350のweightが正しい" do
        expect(tanomerubin350.weight).to eq 150000
      end

      # it "tanomerubin350のtitlenameが正しい" do
      #   expect(tanomerubin350.titlename).to eq "-"
      # end
    end

    context "tanomerubin400" do

      it "tanomerubin400のnameが正しい" do
        expect(tanomerubin400.name).to eq "梱包・発送たのメル便400サイズ"
      end

      it "tanomerubin400のurlが正しい" do
        expect(tanomerubin400.url).to eq "/method/tanomerubin"
      end
      
      it "tanomerubin400のfeeが正しい" do
        expect(tanomerubin400.fee).to eq 25400
      end

      it "tanomerubin400のboxが正しい" do
        expect(tanomerubin400.box).to eq 0
      end

      it "tanomerubin400のtypeが正しい" do
        expect(tanomerubin400.type).to eq "梱包・発送たのメル便"
      end

      it "tanomerubin400のanonymousが正しい" do
        expect(tanomerubin400.anonymous).to eq "○"
      end

      it "tanomerubin400のtrackingが正しい" do
        expect(tanomerubin400.tracking).to eq "○"
      end

      it "tanomerubin400のcompensationが正しい" do
        expect(tanomerubin400.compensation).to eq "○"
      end

      it "tanomerubin400のlsideが正しい" do
        expect(tanomerubin400.lside).to eq 250
      end

      # it "tanomerubin400のssideが正しい" do
      #   expect(tanomerubin400.sside).to eq 0
      # end

      # it "tanomerubin400のthicknessが正しい" do
      #   expect(tanomerubin400.thickness).to eq 0
      # end

      it "tanomerubin400のthreesidesが正しい" do
        expect(tanomerubin400.threesides).to eq 400
      end

      it "tanomerubin400のweightが正しい" do
        expect(tanomerubin400.weight).to eq 150000
      end

      # it "tanomerubin400のtitlenameが正しい" do
      #   expect(tanomerubin400.titlename).to eq "-"
      # end
    end

    context "tanomerubin450" do

      it "tanomerubin450のnameが正しい" do
        expect(tanomerubin450.name).to eq "梱包・発送たのメル便450サイズ"
      end

      it "tanomerubin450のurlが正しい" do
        expect(tanomerubin450.url).to eq "/method/tanomerubin"
      end
      
      it "tanomerubin450のfeeが正しい" do
        expect(tanomerubin450.fee).to eq 33000
      end

      it "tanomerubin450のboxが正しい" do
        expect(tanomerubin450.box).to eq 0
      end

      it "tanomerubin450のtypeが正しい" do
        expect(tanomerubin450.type).to eq "梱包・発送たのメル便"
      end

      it "tanomerubin450のanonymousが正しい" do
        expect(tanomerubin450.anonymous).to eq "○"
      end

      it "tanomerubin450のtrackingが正しい" do
        expect(tanomerubin450.tracking).to eq "○"
      end

      it "tanomerubin450のcompensationが正しい" do
        expect(tanomerubin450.compensation).to eq "○"
      end

      it "tanomerubin450のlsideが正しい" do
        expect(tanomerubin450.lside).to eq 250
      end

      # it "tanomerubin450のssideが正しい" do
      #   expect(tanomerubin450.sside).to eq 0
      # end

      # it "tanomerubin450のthicknessが正しい" do
      #   expect(tanomerubin450.thickness).to eq 0
      # end

      it "tanomerubin450のthreesidesが正しい" do
        expect(tanomerubin450.threesides).to eq 450
      end

      it "tanomerubin450のweightが正しい" do
        expect(tanomerubin450.weight).to eq 150000
      end

      # it "tanomerubin450のtitlenameが正しい" do
      #   expect(tanomerubin450.titlename).to eq "-"
      # end
    end
  end
end