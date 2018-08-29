# encoding: utf-8

class HomePage < SitePrism::Page
  set_url 'http://store.demoqa.com/'
#cucumber --format html --out=log/features.html

  def load
    super
    puts 'TADA'
  end
end