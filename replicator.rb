filename = "replication-" + (0...10).map { ('a'..'z').to_a[rand(26)] }.join + ".rb"

code = %q{
  filename = "replication-" + (0...10).map { ('a'..'z').to_a[rand(26)] }.join + ".rb"

  ##placeholder##

  open(filename, 'w') { |f|
    code = code.sub( "##placeholder##", "code = %q{#{code}}" ).strip
    f.puts code.strip
  }
}

open(filename, 'w') { |f|
  code = code.sub( "##placeholder##", "code = %q{#{code}}" ).strip
  f.puts code.strip
}