After('@tuntz') do

end

After do |scenario|
  puts scenario.name
  nome_cenario = scenario.name
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'TestEmbedding')
end