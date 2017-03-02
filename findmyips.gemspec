# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: findmyips 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "findmyips".freeze
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Christo De Lange".freeze]
  s.date = "2017-03-02"
  s.description = "Look up my IP address".freeze
  s.email = "github@dldinternet.com".freeze
  s.executables = ["findmyips".freeze, "findmyips.sh".freeze]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".ruby-gemset",
    ".ruby-version",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/findmyips",
    "bin/findmyips.sh",
    "features/findmyips.feature",
    "features/step_definitions/whatismyip_steps.rb",
    "features/support/env.rb",
    "findmyips.gemspec",
    "lib/dldinternet/net/findmyips.rb",
    "spec/findmyips_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/dldinternet/findmyips".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Obtain my public and internal IP addresses".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<colorize>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 2.8.0"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.12"])
      s.add_development_dependency(%q<cucumber>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["> 1.0.0"])
      s.add_development_dependency(%q<jeweler>.freeze, [">= 1.8.4"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<colorize>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 2.8.0"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 3.12"])
      s.add_dependency(%q<cucumber>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["> 1.0.0"])
      s.add_dependency(%q<jeweler>.freeze, [">= 1.8.4"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<colorize>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.8.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 3.12"])
    s.add_dependency(%q<cucumber>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["> 1.0.0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 1.8.4"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end

