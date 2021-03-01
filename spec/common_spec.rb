require_relative "spec_helper.rb"

describe $yuPacket do
  it "$yuPacketのnameは正しいか" do
    expect($yuPacket.name).to eq "ゆうパケット"
  end
  it "$yuPacketのfeeは正しいか" do
    expect($yuPacket.fee).to eq 200
  end
  it "$yuPacketのboxは正しいか" do
    expect($yuPacket.box).to eq 0
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