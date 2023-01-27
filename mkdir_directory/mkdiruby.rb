require 'fileutils'

input = ARGV.first
abort("search: missing input") if ARGV.empty?
search = input
FileUtils.mkdir(search)

FileUtils.cd(search)

gem = File.open("Gemfile", "w").puts("source 'https://rubygems.org'\nruby '3.0.0'\ngem 'rspec'\ngem 'rubocop'") 
system("git init")

env = File.open(".env", "w").puts("")

gitignore = File.open(".gitignore", "w").puts(".env")

Dir.mkdir("lib")

system("rspec --init")

readme = File.open("README.md", "w").puts("c'est un programme Ruby")








