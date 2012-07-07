Gem::Specification.new do |s|
  s.name                   = 'domr'
  s.version                = '0.2.1'
  s.summary                = 'Domainr quick search'
  s.date                   = '2012-07-08'
  s.authors                = ['Nick Shvelidze']
  s.email                  = 'shveloo@gmail.com'
  s.homepage               = 'http://shvelo.github.com/domr'
  s.requirements          << 'Internet connection'
  s.description            = 'Quickly search for available domain names from command line.'
  s.executables           << 'domr'
  s.extensions            << 'ext/mkrf_conf.rb'
  s.files                  = ['lib/domr.rb','bin/domr','ext/mkrf_conf.rb','Gemfile']
  s.has_rdoc               = true
  s.extra_rdoc_files       = ['index']
  s.add_runtime_dependency   'json'
  s.add_runtime_dependency   'rainbow'
end