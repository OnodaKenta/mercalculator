require_relative "spec_helper.rb"

RSpec.describe $yuPacket do
  it "$yuPacketのnameは正しいか" do
    expect($yuPacket.name).to eq "ゆうパケット"
  end
  it "$yuPacketのurlは正しいか" do
    expect($yuPacket.url).to eq "/method/yuPacket"
  end
  it "$yuPacketのfeeは正しいか" do
    expect($yuPacket.fee).to eq 200
  end
  it "$yuPacketのboxは正しいか" do
    expect($yuPacket.box).to eq 0
  end
  it "$yuPacketのpriceは正しいか" do
    expect($yuPacket.price).to eq 200
  end
  it "$yuPacketのtypeは正しいか" do
    expect($yuPacket.type).to eq "ゆうゆうメルカリ便"
  end
  it "$yuPacketのanonymousは正しいか" do
    expect($yuPacket.anonymous).to eq "○"
  end
  it "$yuPacketのtrackingは正しいか" do
    expect($yuPacket.tracking).to eq "○"
  end
  it "$yuPacketのcompensationは正しいか" do
    expect($yuPacket.compensation).to eq "○"
  end
  it "$yuPacketのlsideは正しいか" do
    expect($yuPacket.lside).to eq 34
  end
  # it "$yuPacketのssideは正しいか" do
  #   expect($yuPacket.sside).to eq 0
  # end
  it "$yuPacketのthicknessは正しいか" do
    expect($yuPacket.thickness).to eq 3
  end
  it "$yuPacketのthreesidesは正しいか" do
    expect($yuPacket.threesides).to eq 60
  end
  it "$yuPacketのweightは正しいか" do
    expect($yuPacket.weight).to eq 1000
  end
end

RSpec.describe $letterPackPlus do
  it "$letterPackPlusのnameは正しいか" do
    expect($letterPackPlus.name).to eq "レターパックプラス"
  end
  it "$letterPackPlusのurlは正しいか" do
    expect($letterPackPlus.url).to eq "/method/letterPackPlus"
  end
  it "$letterPackPlusのfeeは正しいか" do
    expect($letterPackPlus.fee).to eq 520
  end
  it "$letterPackPlusのboxは正しいか" do
    expect($letterPackPlus.box).to eq 0
  end
  it "$letterPackPlusのpriceは正しいか" do
    expect($letterPackPlus.price).to eq 520
  end
  it "$letterPackPlusのtypeは正しいか" do
    expect($letterPackPlus.type).to eq "日本郵便"
  end
  it "$letterPackPlusのanonymousは正しいか" do
    expect($letterPackPlus.anonymous).to eq "×"
  end
  it "$letterPackPlusのtrackingは正しいか" do
    expect($letterPackPlus.tracking).to eq "○"
  end
  it "$letterPackPlusのcompensationは正しいか" do
    expect($letterPackPlus.compensation).to eq "×"
  end
  it "$letterPackPlusのlsideは正しいか" do
    expect($letterPackPlus.lside).to eq 34
  end
  it "$letterPackPlusのssideは正しいか" do
    expect($letterPackPlus.sside).to eq 24.8
  end
  # it "$letterPackPlusのthicknessは正しいか" do
  #   expect($letterPackPlus.thickness).to eq 0
  # end
  # it "$letterPackPlusのthreesidesは正しいか" do
  #   expect($letterPackPlus.threesides).to eq 0
  # end
  it "$letterPackPlusのweightは正しいか" do
    expect($letterPackPlus.weight).to eq 4000
  end
end

RSpec.describe $takkyubinCompact do
  it "$takkyubinCompactのnameは正しいか" do
    expect($takkyubinCompact.name).to eq "宅急便コンパクト"
  end
  it "$takkyubinCompactのurlは正しいか" do
    expect($takkyubinCompact.url).to eq "/method/takkyubinCompact"
  end
  it "$takkyubinCompactのfeeは正しいか" do
    expect($takkyubinCompact.fee).to eq 380
  end
  it "$takkyubinCompactのboxは正しいか" do
    expect($takkyubinCompact.box).to eq 70
  end
  it "$takkyubinCompactのpriceは正しいか" do
    expect($takkyubinCompact.price).to eq 450
  end
  it "$takkyubinCompactのtypeは正しいか" do
    expect($takkyubinCompact.type).to eq "らくらくメルカリ便"
  end
  it "$takkyubinCompactのanonymousは正しいか" do
    expect($takkyubinCompact.anonymous).to eq "○"
  end
  it "$takkyubinCompactのtrackingは正しいか" do
    expect($takkyubinCompact.tracking).to eq "○"
  end
  it "$takkyubinCompactのcompensationは正しいか" do
    expect($takkyubinCompact.compensation).to eq "○"
  end
  it "$takkyubinCompactのlsideは正しいか" do
    expect($takkyubinCompact.lside).to eq 25
  end
  it "$takkyubinCompactのssideは正しいか" do
    expect($takkyubinCompact.sside).to eq 20
  end
  it "$takkyubinCompactのthicknessは正しいか" do
    expect($takkyubinCompact.thickness).to eq 5
  end
  # it "$takkyubinCompactのthreesidesは正しいか" do
  #   expect($takkyubinCompact.threesides).to eq 0
  # end
  # it "$takkyubinCompactのweightは正しいか" do
  #   expect($takkyubinCompact.weight).to eq 0
  # end
end

RSpec.describe $takkyubinCompactThin do
  it "$takkyubinCompactThinのnameは正しいか" do
    expect($takkyubinCompactThin.name).to eq "宅急便コンパクト薄型BOX"
  end
  it "$takkyubinCompactThinのurlは正しいか" do
    expect($takkyubinCompactThin.url).to eq "/method/takkyubinCompact"
  end
  it "$takkyubinCompactThinのfeeは正しいか" do
    expect($takkyubinCompactThin.fee).to eq 380
  end
  it "$takkyubinCompactThinのboxは正しいか" do
    expect($takkyubinCompactThin.box).to eq 70
  end
  it "$takkyubinCompactThinのpriceは正しいか" do
    expect($takkyubinCompactThin.price).to eq 450
  end
  it "$takkyubinCompactThinのtypeは正しいか" do
    expect($takkyubinCompactThin.type).to eq "らくらくメルカリ便"
  end
  it "$takkyubinCompactThinのanonymousは正しいか" do
    expect($takkyubinCompactThin.anonymous).to eq "○"
  end
  it "$takkyubinCompactThinのtrackingは正しいか" do
    expect($takkyubinCompactThin.tracking).to eq "○"
  end
  it "$takkyubinCompactThinのcompensationは正しいか" do
    expect($takkyubinCompactThin.compensation).to eq "○"
  end
  it "$takkyubinCompactThinのlsideは正しいか" do
    expect($takkyubinCompactThin.lside).to eq 34
  end
  it "$takkyubinCompactThinのssideは正しいか" do
    expect($takkyubinCompactThin.sside).to eq 24.8
  end
  # it "$takkyubinCompactThinのthicknessは正しいか" do
  #   expect($takkyubinCompactThin.thickness).to eq 0
  # end
  # it "$takkyubinCompactThinのthreesidesは正しいか" do
  #   expect($takkyubinCompactThin.threesides).to eq 0
  # end
  # it "$takkyubinCompactThinのweightは正しいか" do
  #   expect($takkyubinCompactThin.weight).to eq 0
  # end
end

RSpec.describe $nothing do
  it "$nothingのpriceは正しいか" do
    expect($nothing.price).to eq 0
  end
end