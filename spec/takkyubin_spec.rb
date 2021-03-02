RSpec.describe $takkyubin do
  it "$takkyubinのnameは正しいか" do
    expect($takkyubin.name).to eq "宅急便60サイズ"
  end
  it "$takkyubinのurlは正しいか" do
    expect($takkyubin.url).to eq "/method/takkyubin"
  end
  # it "$takkyubinのfeeは正しいか" do
  #   expect($takkyubin.fee).to eq 0
  # end
  # it "$takkyubinのboxは正しいか" do
  #   expect($takkyubin.box).to eq 0
  # end
  it "$takkyubinのpriceは正しいか" do
    expect($takkyubin.price).to eq 700
  end
  it "$takkyubinのtypeは正しいか" do
    expect($takkyubin.type).to eq "らくらくメルカリ便"
  end
  it "$takkyubinのanonymousは正しいか" do
    expect($takkyubin.anonymous).to eq "○"
  end
  it "$takkyubinのtrackingは正しいか" do
    expect($takkyubin.tracking).to eq "○"
  end
  it "$takkyubinのcompensationは正しいか" do
    expect($takkyubin.compensation).to eq "○"
  end
  # it "$takkyubinのlsideは正しいか" do
  #   expect($takkyubin.lside).to eq 0
  # end
  # it "$takkyubinのssideは正しいか" do
  #   expect($takkyubin.sside).to eq 0
  # end
  # it "$takkyubinのthicknessは正しいか" do
  #   expect($takkyubin.thickness).to eq 0
  # end
  it "$takkyubinのthreesidesは正しいか" do
    expect($takkyubin.threesides).to eq 60
  end
  it "$takkyubinのweightは正しいか" do
    expect($takkyubin.weight).to eq 2000
  end
end

RSpec.describe $takkyubin do
  takkyubin80 = Takkyubin.new(name: "宅急便80サイズ", price: 800, threesides: 80, weight: 5000)
  it "takkyubin80のnameは正しいか" do
    expect(takkyubin80.name).to eq "宅急便80サイズ"
  end
  it "takkyubin80のurlは正しいか" do
    expect(takkyubin80.url).to eq "/method/takkyubin"
  end
  # it "takkyubin80のfeeは正しいか" do
  #   expect(takkyubin80.fee).to eq 0
  # end
  # it "takkyubin80のboxは正しいか" do
  #   expect(takkyubin80.box).to eq 0
  # end
  it "takkyubin80のpriceは正しいか" do
    expect(takkyubin80.price).to eq 800
  end
  it "takkyubin80のtypeは正しいか" do
    expect(takkyubin80.type).to eq "らくらくメルカリ便"
  end
  it "takkyubin80のanonymousは正しいか" do
    expect(takkyubin80.anonymous).to eq "○"
  end
  it "takkyubin80のtrackingは正しいか" do
    expect(takkyubin80.tracking).to eq "○"
  end
  it "takkyubin80のcompensationは正しいか" do
    expect(takkyubin80.compensation).to eq "○"
  end
  # it "takkyubin80のlsideは正しいか" do
  #   expect(takkyubin80.lside).to eq 0
  # end
  # it "takkyubin80のssideは正しいか" do
  #   expect(takkyubin80.sside).to eq 0
  # end
  # it "takkyubin80のthicknessは正しいか" do
  #   expect(takkyubin80.thickness).to eq 0
  # end
  it "takkyubin80のthreesidesは正しいか" do
    expect(takkyubin80.threesides).to eq 80
  end
  it "takkyubin80のweightは正しいか" do
    expect(takkyubin80.weight).to eq 5000
  end
end

RSpec.describe $takkyubin do
  takkyubin100 = Takkyubin.new(name: "宅急便100サイズ", price: 1000, threesides: 100, weight: 10000)
  it "takkyubin100のnameは正しいか" do
    expect(takkyubin100.name).to eq "宅急便100サイズ"
  end
  it "takkyubin100のurlは正しいか" do
    expect(takkyubin100.url).to eq "/method/takkyubin"
  end
  # it "takkyubin100のfeeは正しいか" do
  #   expect(takkyubin100.fee).to eq 0
  # end
  # it "takkyubin100のboxは正しいか" do
  #   expect(takkyubin100.box).to eq 0
  # end
  it "takkyubin100のpriceは正しいか" do
    expect(takkyubin100.price).to eq 1000
  end
  it "takkyubin100のtypeは正しいか" do
    expect(takkyubin100.type).to eq "らくらくメルカリ便"
  end
  it "takkyubin100のanonymousは正しいか" do
    expect(takkyubin100.anonymous).to eq "○"
  end
  it "takkyubin100のtrackingは正しいか" do
    expect(takkyubin100.tracking).to eq "○"
  end
  it "takkyubin100のcompensationは正しいか" do
    expect(takkyubin100.compensation).to eq "○"
  end
  # it "takkyubin100のlsideは正しいか" do
  #   expect(takkyubin100.lside).to eq 0
  # end
  # it "takkyubin100のssideは正しいか" do
  #   expect(takkyubin100.sside).to eq 0
  # end
  # it "takkyubin100のthicknessは正しいか" do
  #   expect(takkyubin100.thickness).to eq 0
  # end
  it "takkyubin100のthreesidesは正しいか" do
    expect(takkyubin100.threesides).to eq 100
  end
  it "takkyubin100のweightは正しいか" do
    expect(takkyubin100.weight).to eq 10000
  end
end

RSpec.describe $takkyubin do
  takkyubin120 = Takkyubin.new(name: "宅急便120サイズ", price: 1100, threesides: 120, weight: 15000)
  it "takkyubin120のnameは正しいか" do
    expect(takkyubin120.name).to eq "宅急便120サイズ"
  end
  it "takkyubin120のurlは正しいか" do
    expect(takkyubin120.url).to eq "/method/takkyubin"
  end
  # it "takkyubin120のfeeは正しいか" do
  #   expect(takkyubin120.fee).to eq 0
  # end
  # it "takkyubin120のboxは正しいか" do
  #   expect(takkyubin120.box).to eq 0
  # end
  it "takkyubin120のpriceは正しいか" do
    expect(takkyubin120.price).to eq 1100
  end
  it "takkyubin120のtypeは正しいか" do
    expect(takkyubin120.type).to eq "らくらくメルカリ便"
  end
  it "takkyubin120のanonymousは正しいか" do
    expect(takkyubin120.anonymous).to eq "○"
  end
  it "takkyubin120のtrackingは正しいか" do
    expect(takkyubin120.tracking).to eq "○"
  end
  it "takkyubin120のcompensationは正しいか" do
    expect(takkyubin120.compensation).to eq "○"
  end
  # it "takkyubin120のlsideは正しいか" do
  #   expect(takkyubin120.lside).to eq 0
  # end
  # it "takkyubin120のssideは正しいか" do
  #   expect(takkyubin120.sside).to eq 0
  # end
  # it "takkyubin120のthicknessは正しいか" do
  #   expect(takkyubin120.thickness).to eq 0
  # end
  it "takkyubin120のthreesidesは正しいか" do
    expect(takkyubin120.threesides).to eq 120
  end
  it "takkyubin120のweightは正しいか" do
    expect(takkyubin120.weight).to eq 15000
  end
end

RSpec.describe $takkyubin do
  takkyubin140 = Takkyubin.new(name: "宅急便140サイズ", price: 1300, threesides: 140, weight: 20000)
  it "takkyubin140のnameは正しいか" do
    expect(takkyubin140.name).to eq "宅急便140サイズ"
  end
  it "takkyubin140のurlは正しいか" do
    expect(takkyubin140.url).to eq "/method/takkyubin"
  end
  # it "takkyubin140のfeeは正しいか" do
  #   expect(takkyubin140.fee).to eq 0
  # end
  # it "takkyubin140のboxは正しいか" do
  #   expect(takkyubin140.box).to eq 0
  # end
  it "takkyubin140のpriceは正しいか" do
    expect(takkyubin140.price).to eq 1300
  end
  it "takkyubin140のtypeは正しいか" do
    expect(takkyubin140.type).to eq "らくらくメルカリ便"
  end
  it "takkyubin140のanonymousは正しいか" do
    expect(takkyubin140.anonymous).to eq "○"
  end
  it "takkyubin140のtrackingは正しいか" do
    expect(takkyubin140.tracking).to eq "○"
  end
  it "takkyubin140のcompensationは正しいか" do
    expect(takkyubin140.compensation).to eq "○"
  end
  # it "takkyubin140のlsideは正しいか" do
  #   expect(takkyubin140.lside).to eq 0
  # end
  # it "takkyubin140のssideは正しいか" do
  #   expect(takkyubin140.sside).to eq 0
  # end
  # it "takkyubin140のthicknessは正しいか" do
  #   expect(takkyubin140.thickness).to eq 0
  # end
  it "takkyubin140のthreesidesは正しいか" do
    expect(takkyubin140.threesides).to eq 140
  end
  it "takkyubin140のweightは正しいか" do
    expect(takkyubin140.weight).to eq 20000
  end
end

RSpec.describe $takkyubin do
  takkyubin160 = Takkyubin.new(name: "宅急便160サイズ", price: 1600, threesides: 160, weight: 25000)
  it "takkyubin160のnameは正しいか" do
    expect(takkyubin160.name).to eq "宅急便160サイズ"
  end
  it "takkyubin160のurlは正しいか" do
    expect(takkyubin160.url).to eq "/method/takkyubin"
  end
  # it "takkyubin160のfeeは正しいか" do
  #   expect(takkyubin160.fee).to eq 0
  # end
  # it "takkyubin160のboxは正しいか" do
  #   expect(takkyubin160.box).to eq 0
  # end
  it "takkyubin160のpriceは正しいか" do
    expect(takkyubin160.price).to eq 1600
  end
  it "takkyubin160のtypeは正しいか" do
    expect(takkyubin160.type).to eq "らくらくメルカリ便"
  end
  it "takkyubin160のanonymousは正しいか" do
    expect(takkyubin160.anonymous).to eq "○"
  end
  it "takkyubin160のtrackingは正しいか" do
    expect(takkyubin160.tracking).to eq "○"
  end
  it "takkyubin160のcompensationは正しいか" do
    expect(takkyubin160.compensation).to eq "○"
  end
  # it "takkyubin160のlsideは正しいか" do
  #   expect(takkyubin160.lside).to eq 0
  # end
  # it "takkyubin160のssideは正しいか" do
  #   expect(takkyubin160.sside).to eq 0
  # end
  # it "takkyubin160のthicknessは正しいか" do
  #   expect(takkyubin160.thickness).to eq 0
  # end
  it "takkyubin160のthreesidesは正しいか" do
    expect(takkyubin160.threesides).to eq 160
  end
  it "takkyubin160のweightは正しいか" do
    expect(takkyubin160.weight).to eq 25000
  end
end