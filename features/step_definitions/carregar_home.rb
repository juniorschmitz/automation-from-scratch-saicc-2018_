#encoding: utf-8

Dado(/^que carreguei a home$/) do
  @home = HomePage.new
  @home.load
end

Então(/^a página deverá ser apresentada$/) do

end