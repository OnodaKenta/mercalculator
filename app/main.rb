require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "送料計算機"
  erb :index
end

post "/result" do
  @title = "検索結果"
  erb :result
end