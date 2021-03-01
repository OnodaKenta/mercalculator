require_relative "spec_helper.rb"

RSpec.describe $nekoPos do
  it "$nekoPosのnameは正しいか" do
    expect($nekoPos.name).to eq "ネコポス"
  end
  it "$nekoPosのurlは正しいか" do
    expect($nekoPos.url).to eq "/method/nekoPos"
  end
  it "$nekoPosのfeeは正しいか" do
    expect($nekoPos.fee).to eq 175
  end
  it "$nekoPosのboxは正しいか" do
    expect($nekoPos.box).to eq 0
  end
  it "$nekoPosのpriceは正しいか" do
    expect($nekoPos.price).to eq 175
  end
  it "$nekoPosのtypeは正しいか" do
    expect($nekoPos.type).to eq "らくらくメルカリ便"
  end
  it "$nekoPosのanonymousは正しいか" do
    expect($nekoPos.anonymous).to eq "○"
  end
  it "$nekoPosのtrackingは正しいか" do
    expect($nekoPos.tracking).to eq "○"
  end
  it "$nekoPosのcompensationは正しいか" do
    expect($nekoPos.compensation).to eq "○"
  end
  it "$nekoPosのlsideは正しいか" do
    expect($nekoPos.lside).to eq 31.2
  end
  it "$nekoPosのssideは正しいか" do
    expect($nekoPos.sside).to eq 22.8
  end
  it "$nekoPosのthicknessは正しいか" do
    expect($nekoPos.thickness).to eq 3
  end
  # it "$nekoPosのthreesidesは正しいか" do
  #   expect($nekoPos.threesides).to eq 0
  # end
  it "$nekoPosのweightは正しいか" do
    expect($nekoPos.weight).to eq 1000
  end
end

RSpec.describe $yuPacketPost do
  it "$yuPacketPostのnameは正しいか" do
    expect($yuPacketPost.name).to eq "ゆうパケットポスト"
  end
  it "$yuPacketPostのurlは正しいか" do
    expect($yuPacketPost.url).to eq "/method/yuPacketPost"
  end
  it "$yuPacketPostのfeeは正しいか" do
    expect($yuPacketPost.fee).to eq 200
  end
  it "$yuPacketPostのboxは正しいか" do
    expect($yuPacketPost.box).to eq 65
  end
  it "$yuPacketPostのpriceは正しいか" do
    expect($yuPacketPost.price).to eq 265
  end
  it "$yuPacketPostのtypeは正しいか" do
    expect($yuPacketPost.type).to eq "ゆうゆうメルカリ便"
  end
  it "$yuPacketPostのanonymousは正しいか" do
    expect($yuPacketPost.anonymous).to eq "○"
  end
  it "$yuPacketPostのtrackingは正しいか" do
    expect($yuPacketPost.tracking).to eq "○"
  end
  it "$yuPacketPostのcompensationは正しいか" do
    expect($yuPacketPost.compensation).to eq "○"
  end
  it "$yuPacketPostのlsideは正しいか" do
    expect($yuPacketPost.lside).to eq 32.7
  end
  it "$yuPacketPostのssideは正しいか" do
    expect($yuPacketPost.sside).to eq 22.8
  end
  it "$yuPacketPostのthicknessは正しいか" do
    expect($yuPacketPost.thickness).to eq 3
  end
  # it "$yuPacketPostのthreesidesは正しいか" do
  #   expect($yuPacketPost.threesides).to eq 0
  # end
  it "$yuPacketPostのweightは正しいか" do
    expect($yuPacketPost.weight).to eq 2000
  end
end

RSpec.describe $clickPost do
  it "$clickPostのnameは正しいか" do
    expect($clickPost.name).to eq "クリックポスト"
  end
  it "$clickPostのurlは正しいか" do
    expect($clickPost.url).to eq "/method/clickPost"
  end
  it "$clickPostのfeeは正しいか" do
    expect($clickPost.fee).to eq 198
  end
  it "$clickPostのboxは正しいか" do
    expect($clickPost.box).to eq 0
  end
  it "$clickPostのpriceは正しいか" do
    expect($clickPost.price).to eq 198
  end
  it "$clickPostのtypeは正しいか" do
    expect($clickPost.type).to eq "日本郵便"
  end
  it "$clickPostのanonymousは正しいか" do
    expect($clickPost.anonymous).to eq "×"
  end
  it "$clickPostのtrackingは正しいか" do
    expect($clickPost.tracking).to eq "○"
  end
  it "$clickPostのcompensationは正しいか" do
    expect($clickPost.compensation).to eq "×"
  end
  it "$clickPostのlsideは正しいか" do
    expect($clickPost.lside).to eq 34
  end
  it "$clickPostのssideは正しいか" do
    expect($clickPost.sside).to eq 25
  end
  it "$clickPostのthicknessは正しいか" do
    expect($clickPost.thickness).to eq 3
  end
  # it "$clickPostのthreesidesは正しいか" do
  #   expect($clickPost.threesides).to eq 0
  # end
  it "$clickPostのweightは正しいか" do
    expect($clickPost.weight).to eq 1000
  end
end

RSpec.describe $smartLetter do
  it "$smartLetterのnameは正しいか" do
    expect($smartLetter.name).to eq "スマートレター"
  end
  it "$smartLetterのurlは正しいか" do
    expect($smartLetter.url).to eq "/method/smartLetter"
  end
  it "$smartLetterのfeeは正しいか" do
    expect($smartLetter.fee).to eq 180
  end
  it "$smartLetterのboxは正しいか" do
    expect($smartLetter.box).to eq 0
  end
  it "$smartLetterのpriceは正しいか" do
    expect($smartLetter.price).to eq 180
  end
  it "$smartLetterのtypeは正しいか" do
    expect($smartLetter.type).to eq "日本郵便"
  end
  it "$smartLetterのanonymousは正しいか" do
    expect($smartLetter.anonymous).to eq "×"
  end
  it "$smartLetterのtrackingは正しいか" do
    expect($smartLetter.tracking).to eq "×"
  end
  it "$smartLetterのcompensationは正しいか" do
    expect($smartLetter.compensation).to eq "×"
  end
  it "$smartLetterのlsideは正しいか" do
    expect($smartLetter.lside).to eq 25
  end
  it "$smartLetterのssideは正しいか" do
    expect($smartLetter.sside).to eq 17
  end
  it "$smartLetterのthicknessは正しいか" do
    expect($smartLetter.thickness).to eq 2
  end
  # it "$smartLetterのthreesidesは正しいか" do
  #   expect($smartLetter.threesides).to eq 0
  # end
  it "$smartLetterのweightは正しいか" do
    expect($smartLetter.weight).to eq 1000
  end
end

RSpec.describe $letterPackLight do
  it "$letterPackLightのnameは正しいか" do
    expect($letterPackLight.name).to eq "レターパックライト"
  end
  it "$letterPackLightのurlは正しいか" do
    expect($letterPackLight.url).to eq "/method/letterPackLight"
  end
  it "$letterPackLightのfeeは正しいか" do
    expect($letterPackLight.fee).to eq 370
  end
  it "$letterPackLightのboxは正しいか" do
    expect($letterPackLight.box).to eq 0
  end
  it "$letterPackLightのpriceは正しいか" do
    expect($letterPackLight.price).to eq 370
  end
  it "$letterPackLightのtypeは正しいか" do
    expect($letterPackLight.type).to eq "日本郵便"
  end
  it "$letterPackLightのanonymousは正しいか" do
    expect($letterPackLight.anonymous).to eq "×"
  end
  it "$letterPackLightのtrackingは正しいか" do
    expect($letterPackLight.tracking).to eq "○"
  end
  it "$letterPackLightのcompensationは正しいか" do
    expect($letterPackLight.compensation).to eq "×"
  end
  it "$letterPackLightのlsideは正しいか" do
    expect($letterPackLight.lside).to eq 34
  end
  it "$letterPackLightのssideは正しいか" do
    expect($letterPackLight.sside).to eq 24.8
  end
  it "$letterPackLightのthicknessは正しいか" do
    expect($letterPackLight.thickness).to eq 3
  end
  # it "$letterPackLightのthreesidesは正しいか" do
  #   expect($letterPackLight.threesides).to eq 0
  # end
  it "$letterPackLightのweightは正しいか" do
    expect($letterPackLight.weight).to eq 4000
  end
end

RSpec.describe $yuPacketPlus do
  it "$yuPacketPlusのnameは正しいか" do
    expect($yuPacketPlus.name).to eq "ゆうパケットプラス"
  end
  it "$yuPacketPlusのurlは正しいか" do
    expect($yuPacketPlus.url).to eq "/method/yuPacketPlus"
  end
  it "$yuPacketPlusのfeeは正しいか" do
    expect($yuPacketPlus.fee).to eq 375
  end
  it "$yuPacketPlusのboxは正しいか" do
    expect($yuPacketPlus.box).to eq 65
  end
  it "$yuPacketPlusのpriceは正しいか" do
    expect($yuPacketPlus.price).to eq 440
  end
  it "$yuPacketPlusのtypeは正しいか" do
    expect($yuPacketPlus.type).to eq "ゆうゆうメルカリ便"
  end
  it "$yuPacketPlusのanonymousは正しいか" do
    expect($yuPacketPlus.anonymous).to eq "○"
  end
  it "$yuPacketPlusのtrackingは正しいか" do
    expect($yuPacketPlus.tracking).to eq "○"
  end
  it "$yuPacketPlusのcompensationは正しいか" do
    expect($yuPacketPlus.compensation).to eq "○"
  end
  it "$yuPacketPlusのlsideは正しいか" do
    expect($yuPacketPlus.lside).to eq 24
  end
  it "$yuPacketPlusのssideは正しいか" do
    expect($yuPacketPlus.sside).to eq 17
  end
  it "$yuPacketPlusのthicknessは正しいか" do
    expect($yuPacketPlus.thickness).to eq 7
  end
  # it "$yuPacketPlusのthreesidesは正しいか" do
  #   expect($yuPacketPlus.threesides).to eq 0
  # end
  it "$yuPacketPlusのweightは正しいか" do
    expect($yuPacketPlus.weight).to eq 2000
  end
end

