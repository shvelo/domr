require 'rubygems'
require 'rubygems/command.rb'
require 'rubygems/dependency_installer.rb'

begin
  Gem::Command.build_args = ARGV
rescue NoMethodError
end
inst = Gem::DependencyInstaller.new
begin
  if RUBY_PLATFORM == 'mswin32' || RUBY_PLATFORM == 'mingw' || RUBY_PLATFORM == 'cygwin'
    inst.install "win32console", "~> 1.3.2"
  else
    inst.install "windows-pr", "~> 1.2.1"
  end
rescue
  exit(1)
end

f = File.open(File.join(File.dirname(__FILE__), "Rakefile"), "w")   # create dummy rakefile to indicate success
f.write("task :default\n")
f.close