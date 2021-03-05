RSpec.describe $tanomerubin do
  it "$tanomerubinのnameは正しいか" do
    expect($tanomerubin.name).to eq "梱包・発送たのメル便80サイズ"
  end
  it "$tanomerubinのurlは正しいか" do
    expect($tanomerubin.url).to eq "/method/tanomerubin"
  end
  # it "$tanomerubinのfeeは正しいか" do
  #   expect($tanomerubin.fee).to eq 0
  # end
  # it "$tanomerubinのboxは正しいか" do
  #   expect($tanomerubin.box).to eq 0
  # end
  it "$tanomerubinのpriceは正しいか" do
    expect($tanomerubin.price).to eq 1700
  end
  it "$tanomerubinのtypeは正しいか" do
    expect($tanomerubin.type).to eq "梱包・発送たのメル便"
  end
  it "$tanomerubinのanonymousは正しいか" do
    expect($tanomerubin.anonymous).to eq "○"
  end
  it "$tanomerubinのtrackingは正しいか" do
    expect($tanomerubin.tracking).to eq "○"
  end
  it "$tanomerubinのcompensationは正しいか" do
    expect($tanomerubin.compensation).to eq "○"
  end
  # it "$tanomerubinのlsideは正しいか" do
  #   expect($tanomerubin.lside).to eq 0
  # end
  # it "$tanomerubinのssideは正しいか" do
  #   expect($tanomerubin.sside).to eq 0
  # end
  # it "$tanomerubinのthicknessは正しいか" do
  #   expect($tanomerubin.thickness).to eq 0
  # end
  it "$tanomerubinのthreesidesは正しいか" do
    expect($tanomerubin.threesides).to eq 80
  end
  it "$tanomerubinのweightは正しいか" do
    expect($tanomerubin.weight).to eq 150000
  end
end

tanomerubin120 = Tanomerubin.new(name: "梱包・発送たのメル便120サイズ", price: 2400, threesides: 120)
RSpec.describe tanomerubin120 do
  it "tanomerubin120のnameは正しいか" do
    expect(tanomerubin120.name).to eq "梱包・発送たのメル便120サイズ"
  end
  it "tanomerubin120のurlは正しいか" do
    expect(tanomerubin120.url).to eq "/method/tanomerubin"
  end
  # it "tanomerubin120のfeeは正しいか" do
  #   expect(tanomerubin120.fee).to eq 0
  # end
  # it "tanomerubin120のboxは正しいか" do
  #   expect(tanomerubin120.box).to eq 0
  # end
  it "tanomerubin120のpriceは正しいか" do
    expect(tanomerubin120.price).to eq 2400
  end
  it "tanomerubin120のtypeは正しいか" do
    expect(tanomerubin120.type).to eq "梱包・発送たのメル便"
  end
  it "tanomerubin120のanonymousは正しいか" do
    expect(tanomerubin120.anonymous).to eq "○"
  end
  it "tanomerubin120のtrackingは正しいか" do
    expect(tanomerubin120.tracking).to eq "○"
  end
  it "tanomerubin120のcompensationは正しいか" do
    expect(tanomerubin120.compensation).to eq "○"
  end
  # it "tanomerubin120のlsideは正しいか" do
  #   expect(tanomerubin120.lside).to eq 0
  # end
  # it "tanomerubin120のssideは正しいか" do
  #   expect(tanomerubin120.sside).to eq 0
  # end
  # it "tanomerubin120のthicknessは正しいか" do
  #   expect(tanomerubin120.thickness).to eq 0
  # end
  it "tanomerubin120のthreesidesは正しいか" do
    expect(tanomerubin120.threesides).to eq 120
  end
  it "tanomerubin120のweightは正しいか" do
    expect(tanomerubin120.weight).to eq 150000
  end
end

tanomerubin160 = Tanomerubin.new(name: "梱包・発送たのメル便160サイズ", price: 3400, threesides: 160)
RSpec.describe tanomerubin160 do
  it "tanomerubin160のnameは正しいか" do
    expect(tanomerubin160.name).to eq "梱包・発送たのメル便160サイズ"
  end
  it "tanomerubin160のurlは正しいか" do
    expect(tanomerubin160.url).to eq "/method/tanomerubin"
  end
  # it "tanomerubin160のfeeは正しいか" do
  #   expect(tanomerubin160.fee).to eq 0
  # end
  # it "tanomerubin160のboxは正しいか" do
  #   expect(tanomerubin160.box).to eq 0
  # end
  it "tanomerubin160のpriceは正しいか" do
    expect(tanomerubin160.price).to eq 3400
  end
  it "tanomerubin160のtypeは正しいか" do
    expect(tanomerubin160.type).to eq "梱包・発送たのメル便"
  end
  it "tanomerubin160のanonymousは正しいか" do
    expect(tanomerubin160.anonymous).to eq "○"
  end
  it "tanomerubin160のtrackingは正しいか" do
    expect(tanomerubin160.tracking).to eq "○"
  end
  it "tanomerubin160のcompensationは正しいか" do
    expect(tanomerubin160.compensation).to eq "○"
  end
  # it "tanomerubin160のlsideは正しいか" do
  #   expect(tanomerubin160.lside).to eq 0
  # end
  # it "tanomerubin160のssideは正しいか" do
  #   expect(tanomerubin160.sside).to eq 0
  # end
  # it "tanomerubin160のthicknessは正しいか" do
  #   expect(tanomerubin160.thickness).to eq 0
  # end
  it "tanomerubin160のthreesidesは正しいか" do
    expect(tanomerubin160.threesides).to eq 160
  end
  it "tanomerubin160のweightは正しいか" do
    expect(tanomerubin160.weight).to eq 150000
  end
end

tanomerubin200 = Tanomerubin.new(name: "梱包・発送たのメル便200サイズ", price: 5000, threesides: 200)
RSpec.describe tanomerubin200 do
  it "tanomerubin200のnameは正しいか" do
    expect(tanomerubin200.name).to eq "梱包・発送たのメル便200サイズ"
  end
  it "tanomerubin200のurlは正しいか" do
    expect(tanomerubin200.url).to eq "/method/tanomerubin"
  end
  # it "tanomerubin200のfeeは正しいか" do
  #   expect(tanomerubin200.fee).to eq 0
  # end
  # it "tanomerubin200のboxは正しいか" do
  #   expect(tanomerubin200.box).to eq 0
  # end
  it "tanomerubin200のpriceは正しいか" do
    expect(tanomerubin200.price).to eq 5000
  end
  it "tanomerubin200のtypeは正しいか" do
    expect(tanomerubin200.type).to eq "梱包・発送たのメル便"
  end
  it "tanomerubin200のanonymousは正しいか" do
    expect(tanomerubin200.anonymous).to eq "○"
  end
  it "tanomerubin200のtrackingは正しいか" do
    expect(tanomerubin200.tracking).to eq "○"
  end
  it "tanomerubin200のcompensationは正しいか" do
    expect(tanomerubin200.compensation).to eq "○"
  end
  # it "tanomerubin200のlsideは正しいか" do
  #   expect(tanomerubin200.lside).to eq 0
  # end
  # it "tanomerubin200のssideは正しいか" do
  #   expect(tanomerubin200.sside).to eq 0
  # end
  # it "tanomerubin200のthicknessは正しいか" do
  #   expect(tanomerubin200.thickness).to eq 0
  # end
  it "tanomerubin200のthreesidesは正しいか" do
    expect(tanomerubin200.threesides).to eq 200
  end
  it "tanomerubin200のweightは正しいか" do
    expect(tanomerubin200.weight).to eq 150000
  end
end

tanomerubin250 = Tanomerubin.new(name: "梱包・発送たのメル便250サイズ", price: 8600, threesides: 250)
RSpec.describe tanomerubin250 do
  it "tanomerubin250のnameは正しいか" do
    expect(tanomerubin250.name).to eq "梱包・発送たのメル便250サイズ"
  end
  it "tanomerubin250のurlは正しいか" do
    expect(tanomerubin250.url).to eq "/method/tanomerubin"
  end
  # it "tanomerubin250のfeeは正しいか" do
  #   expect(tanomerubin250.fee).to eq 0
  # end
  # it "tanomerubin250のboxは正しいか" do
  #   expect(tanomerubin250.box).to eq 0
  # end
  it "tanomerubin250のpriceは正しいか" do
    expect(tanomerubin250.price).to eq 8600
  end
  it "tanomerubin250のtypeは正しいか" do
    expect(tanomerubin250.type).to eq "梱包・発送たのメル便"
  end
  it "tanomerubin250のanonymousは正しいか" do
    expect(tanomerubin250.anonymous).to eq "○"
  end
  it "tanomerubin250のtrackingは正しいか" do
    expect(tanomerubin250.tracking).to eq "○"
  end
  it "tanomerubin250のcompensationは正しいか" do
    expect(tanomerubin250.compensation).to eq "○"
  end
  # it "tanomerubin250のlsideは正しいか" do
  #   expect(tanomerubin250.lside).to eq 0
  # end
  # it "tanomerubin250のssideは正しいか" do
  #   expect(tanomerubin250.sside).to eq 0
  # end
  # it "tanomerubin250のthicknessは正しいか" do
  #   expect(tanomerubin250.thickness).to eq 0
  # end
  it "tanomerubin250のthreesidesは正しいか" do
    expect(tanomerubin250.threesides).to eq 250
  end
  it "tanomerubin250のweightは正しいか" do
    expect(tanomerubin250.weight).to eq 150000
  end
end

tanomerubin300 = Tanomerubin.new(name: "梱包・発送たのメル便300サイズ", price: 12000, threesides: 300)
RSpec.describe tanomerubin300 do
  it "tanomerubin300のnameは正しいか" do
    expect(tanomerubin300.name).to eq "梱包・発送たのメル便300サイズ"
  end
  it "tanomerubin300のurlは正しいか" do
    expect(tanomerubin300.url).to eq "/method/tanomerubin"
  end
  # it "tanomerubin300のfeeは正しいか" do
  #   expect(tanomerubin300.fee).to eq 0
  # end
  # it "tanomerubin300のboxは正しいか" do
  #   expect(tanomerubin300.box).to eq 0
  # end
  it "tanomerubin300のpriceは正しいか" do
    expect(tanomerubin300.price).to eq 12000
  end
  it "tanomerubin300のtypeは正しいか" do
    expect(tanomerubin300.type).to eq "梱包・発送たのメル便"
  end
  it "tanomerubin300のanonymousは正しいか" do
    expect(tanomerubin300.anonymous).to eq "○"
  end
  it "tanomerubin300のtrackingは正しいか" do
    expect(tanomerubin300.tracking).to eq "○"
  end
  it "tanomerubin300のcompensationは正しいか" do
    expect(tanomerubin300.compensation).to eq "○"
  end
  # it "tanomerubin300のlsideは正しいか" do
  #   expect(tanomerubin300.lside).to eq 0
  # end
  # it "tanomerubin300のssideは正しいか" do
  #   expect(tanomerubin300.sside).to eq 0
  # end
  # it "tanomerubin300のthicknessは正しいか" do
  #   expect(tanomerubin300.thickness).to eq 0
  # end
  it "tanomerubin300のthreesidesは正しいか" do
    expect(tanomerubin300.threesides).to eq 300
  end
  it "tanomerubin300のweightは正しいか" do
    expect(tanomerubin300.weight).to eq 150000
  end
end

tanomerubin350 = Tanomerubin.new(name: "梱包・発送たのメル便350サイズ", price: 18500, threesides: 350)
RSpec.describe tanomerubin350 do
  it "tanomerubin350のnameは正しいか" do
    expect(tanomerubin350.name).to eq "梱包・発送たのメル便350サイズ"
  end
  it "tanomerubin350のurlは正しいか" do
    expect(tanomerubin350.url).to eq "/method/tanomerubin"
  end
  # it "tanomerubin350のfeeは正しいか" do
  #   expect(tanomerubin350.fee).to eq 0
  # end
  # it "tanomerubin350のboxは正しいか" do
  #   expect(tanomerubin350.box).to eq 0
  # end
  it "tanomerubin350のpriceは正しいか" do
    expect(tanomerubin350.price).to eq 18500
  end
  it "tanomerubin350のtypeは正しいか" do
    expect(tanomerubin350.type).to eq "梱包・発送たのメル便"
  end
  it "tanomerubin350のanonymousは正しいか" do
    expect(tanomerubin350.anonymous).to eq "○"
  end
  it "tanomerubin350のtrackingは正しいか" do
    expect(tanomerubin350.tracking).to eq "○"
  end
  it "tanomerubin350のcompensationは正しいか" do
    expect(tanomerubin350.compensation).to eq "○"
  end
  # it "tanomerubin350のlsideは正しいか" do
  #   expect(tanomerubin350.lside).to eq 0
  # end
  # it "tanomerubin350のssideは正しいか" do
  #   expect(tanomerubin350.sside).to eq 0
  # end
  # it "tanomerubin350のthicknessは正しいか" do
  #   expect(tanomerubin350.thickness).to eq 0
  # end
  it "tanomerubin350のthreesidesは正しいか" do
    expect(tanomerubin350.threesides).to eq 350
  end
  it "tanomerubin350のweightは正しいか" do
    expect(tanomerubin350.weight).to eq 150000
  end
end

tanomerubin400 = Tanomerubin.new(name: "梱包・発送たのメル便400サイズ", price: 25400, threesides: 400)
RSpec.describe tanomerubin400 do
  it "tanomerubin400のnameは正しいか" do
    expect(tanomerubin400.name).to eq "梱包・発送たのメル便400サイズ"
  end
  it "tanomerubin400のurlは正しいか" do
    expect(tanomerubin400.url).to eq "/method/tanomerubin"
  end
  # it "tanomerubin400のfeeは正しいか" do
  #   expect(tanomerubin400.fee).to eq 0
  # end
  # it "tanomerubin400のboxは正しいか" do
  #   expect(tanomerubin400.box).to eq 0
  # end
  it "tanomerubin400のpriceは正しいか" do
    expect(tanomerubin400.price).to eq 25400
  end
  it "tanomerubin400のtypeは正しいか" do
    expect(tanomerubin400.type).to eq "梱包・発送たのメル便"
  end
  it "tanomerubin400のanonymousは正しいか" do
    expect(tanomerubin400.anonymous).to eq "○"
  end
  it "tanomerubin400のtrackingは正しいか" do
    expect(tanomerubin400.tracking).to eq "○"
  end
  it "tanomerubin400のcompensationは正しいか" do
    expect(tanomerubin400.compensation).to eq "○"
  end
  # it "tanomerubin400のlsideは正しいか" do
  #   expect(tanomerubin400.lside).to eq 0
  # end
  # it "tanomerubin400のssideは正しいか" do
  #   expect(tanomerubin400.sside).to eq 0
  # end
  # it "tanomerubin400のthicknessは正しいか" do
  #   expect(tanomerubin400.thickness).to eq 0
  # end
  it "tanomerubin400のthreesidesは正しいか" do
    expect(tanomerubin400.threesides).to eq 400
  end
  it "tanomerubin400のweightは正しいか" do
    expect(tanomerubin400.weight).to eq 150000
  end
end

tanomerubin450 = Tanomerubin.new(name: "梱包・発送たのメル便450サイズ", price: 33000, threesides: 450)
RSpec.describe tanomerubin450 do
  it "tanomerubin450のnameは正しいか" do
    expect(tanomerubin450.name).to eq "梱包・発送たのメル便450サイズ"
  end
  it "tanomerubin450のurlは正しいか" do
    expect(tanomerubin450.url).to eq "/method/tanomerubin"
  end
  # it "tanomerubin450のfeeは正しいか" do
  #   expect(tanomerubin450.fee).to eq 0
  # end
  # it "tanomerubin450のboxは正しいか" do
  #   expect(tanomerubin450.box).to eq 0
  # end
  it "tanomerubin450のpriceは正しいか" do
    expect(tanomerubin450.price).to eq 33000
  end
  it "tanomerubin450のtypeは正しいか" do
    expect(tanomerubin450.type).to eq "梱包・発送たのメル便"
  end
  it "tanomerubin450のanonymousは正しいか" do
    expect(tanomerubin450.anonymous).to eq "○"
  end
  it "tanomerubin450のtrackingは正しいか" do
    expect(tanomerubin450.tracking).to eq "○"
  end
  it "tanomerubin450のcompensationは正しいか" do
    expect(tanomerubin450.compensation).to eq "○"
  end
  # it "tanomerubin450のlsideは正しいか" do
  #   expect(tanomerubin450.lside).to eq 0
  # end
  # it "tanomerubin450のssideは正しいか" do
  #   expect(tanomerubin450.sside).to eq 0
  # end
  # it "tanomerubin450のthicknessは正しいか" do
  #   expect(tanomerubin450.thickness).to eq 0
  # end
  it "tanomerubin450のthreesidesは正しいか" do
    expect(tanomerubin450.threesides).to eq 450
  end
  it "tanomerubin450のweightは正しいか" do
    expect(tanomerubin450.weight).to eq 150000
  end
end
