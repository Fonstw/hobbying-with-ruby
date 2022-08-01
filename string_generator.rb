length = ARGV[0] ? ARGV[0].to_i : 32

# Fully random, any printable ASCII character
random_string = (0...length).map { (rand 32..126).chr }.join
puts random_string

# With a given alphabet
alphabet = ARGV[1] || "0123456789ABCDEF"
random_string = (0...length).map { alphabet.chars.shuffle.first }.join
puts random_string
