path = ARGV[0]

raise 'Path needed in order to remove comments. . . okay?' unless path

def is_comment? line
  start = line.index('#')
  return true if start and line[0..start-1].gsub(' ', '').empty? or start == 0
end

lines = File.readlines path

lines.delete_if {|line| is_comment? line}

File.open(path, 'w') {|f| f.puts lines}
