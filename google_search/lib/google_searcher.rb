require 'launchy'

input = ARGV
abort("search: missing input") if ARGV.empty?
search = input.join(" ")
url = "https://www.google.com/search?q=" + search


Launchy.open(url)

