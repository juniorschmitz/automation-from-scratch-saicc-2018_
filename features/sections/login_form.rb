#encoding: utf-8

module Desktop
  class LoginForm < SitePrism::Section
    element  :input_username, '#log'
    element  :input_password, '#pwd'

    element  :remember_me, 'input#rememberme'

    element  :btn_login, 'input#login'
  end
end