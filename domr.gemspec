Gem::Specification.new do |s|
  s.name        = 'domr'
  s.version     = '0.0.5'
  s.date        = '2012-07-12'
  s.summary     = "Domainr quick search"
  s.description = "Quickly search for available domains"
  s.authors     = ["Nick Shvelidze"]
  s.email       = 'shveloo@gmail.com'
  s.files       = ['lib/domr.rb','bin/domr']
  s.add_runtime_dependency 'json'
  s.add_runtime_dependency 'rainbow'
  s.add_runtime_dependency 'win32console'
  s.add_runtime_dependency 'windows-pr'
  s.executables << 'domr'
  s.homepage    =
    'http://github.com/shvelo/domr'
end