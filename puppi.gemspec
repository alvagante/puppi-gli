# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','puppi','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'puppi'
  s.version = Puppi::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/puppi
lib/puppi/version.rb
lib/puppi.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','puppi.rdoc']
  s.rdoc_options << '--title' << 'puppi' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'puppi'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.0.0')
end
