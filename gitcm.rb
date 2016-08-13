repo = ARGV[0].gsub("\n", '')

puts `git clone git@github.com:MainShayne233/#{repo}`
