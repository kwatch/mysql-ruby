require 'rubygems' unless defined?(Gem)

spec = Gem::Specification.new do |s|
  s.name     = "mysql-ruby"
  s.author   = "Masahiro TOMITA"
  s.email    = "tommy.(at).tmtm.org"
  s.version  = "2.8.0"
  s.date     = "2008-09-29"
  #s.platform = Gem::Platform::RUBY
  s.homepage = "http://www.tmtm.org/mysql/ruby/"
  s.summary  = "MySQL driver for Ruby"
  s.rubyforge_project = "mysql-ruby"
  s.description = <<END
This is the MySQL API module for Ruby. It provides the same functions for Ruby
programs that the MySQL C API provides for C programs.
END
  s.files = %w[
    COPYING COPYING.ja README.html README_ja.html
    ext/extconf.rb ext/mysql.c
    setup.rb test.rb tommy.css mysql-ruby.gemspec
  ]
  #s.test_file  = "test.rb"
  s.extensions = ["ext/extconf.rb"]
end

if $0 == __FILE__
  #Gem::manage_gems
  #Gem::Builder.new(spec).build
  require 'rubygems/gem_runner'
  Gem::GemRunner.new.run ['build', 'mysql-ruby.gemspec']
end

spec

