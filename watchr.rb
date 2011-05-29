require "haml"

watch '(.*)\.haml' do |match_data|
  file = match_data[0]
  engine = Haml::Engine.new(File.read(file), :format => :html5)
  File.open("#{match_data[1]}.html", 'w') do |f|
    f.write engine.render
  end
end