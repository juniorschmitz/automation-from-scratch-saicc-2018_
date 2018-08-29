#encoding: utf-8

Dado(/^que carreguei a tela de login$/) do
  @login_page = LoginPage.new
  @login_page.load
end

Quando(/^logar com usuário (.+) e senha (.+)$/) do |email, password|
  @login_page.login(email, password)
  sleep(2)
  @profile_page = ProfilePage.new
end

Então(/^deve carregar a página de painel de administração$/) do
  expected_url = 'http://store.demoqa.com/products-page/your-account/'
  expect(@profile_page.current_url).to include expected_url
  expect(@profile_page.header).to have_account_logout
end
