require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "インデックス"
  erb :index
end

get "/test" do
  @title = "テスト"
  erb :test
end