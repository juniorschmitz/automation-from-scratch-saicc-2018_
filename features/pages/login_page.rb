Dir[File.join(File.dirname(__FILE__), '../sections/*.rb')].each { |file| require file }
# encoding: utf-8

class LoginPage < SitePrism::Page
  set_url 'http://store.demoqa.com/products-page/your-account/'
  section :header, Desktop::Header, '#header'

  section :login_form, Desktop::LoginForm, '#ajax_loginform'

  def login(email, password)
    login_form.input_username.set(email)
    login_form.input_password.set(password)
    login_form.btn_login.click
  end

  def load
    super
    puts 'TADA'
  end
end