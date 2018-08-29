Dir[File.join(File.dirname(__FILE__), '../sections/*.rb')].each { |file| require file }
# encoding: utf-8

class ProfilePage < SitePrism::Page
  set_url 'http://store.demoqa.com/products-page/your-account/'
  section :header, Desktop::Header, '#header'


  section :profile_body, Desktop::ProfileBody, 'div#content'

  def load
    super
    puts 'TADA'
  end
end