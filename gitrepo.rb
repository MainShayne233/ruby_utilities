name = ARGV[0].gsub("\n", '')

puts `curl -u 'MainShayne233' https://api.github.com/user/repos -d '{"name":"#{name}"}'`

puts "git@github.com:MainShayne233/#{name}.git"
