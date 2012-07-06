Gem::Specification.new do |s|
  s.name        = 'domr'
  s.version     = '0.0.7'
  s.date        = '2012-07-12'
  s.summary     = "Domainr quick search"
  s.description = "Quickly search for available domains"
  s.authors     = ["Nick Shvelidze"]
  s.email       = 'shveloo@gmail.com'
  s.files       = ['lib/domr.rb','bin/domr','ext/mkrf_conf.rb']
  s.add_runtime_dependency 'json'
  s.add_runtime_dependency 'rainbow'
  s.executables << 'domr'
  s.homepage    =
    'http://shvelo.github.com/domr'
end