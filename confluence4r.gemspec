# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: confluence4r 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "confluence4r"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ben Walding"]
  s.date = "2013-11-19"
  s.description = "Confluence SOAP Library"
  s.email = "bwalding@codehaus.org"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.txt"
  ]
  s.files = [
    ".ruby-version",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.txt",
    "Rakefile",
    "VERSION",
    "confluence4r.gemspec",
    "examples/.gitignore",
    "examples/dump-security",
    "examples/example-bootstrap.rb",
    "examples/example-credentials.yml",
    "examples/spam.rb",
    "examples/test-get-user",
    "lib/confluence4r/confluence4r.rb",
    "lib/confluence4r/confluence_tool.rb",
    "lib/confluence4r/v1/ConfluenceSoapServiceDriver.rb",
    "lib/confluence4r/v1/confluenceService.rb",
    "lib/confluence4r/v1/confluenceServiceMappingRegistry.rb",
    "lib/confluence4r/v2/ConfluenceSoapServiceDriver.rb",
    "lib/confluence4r/v2/confluenceService.rb",
    "lib/confluence4r/v2/confluenceServiceMappingRegistry.rb",
    "lib/confluenceService.rb",
    "lib/confluenceServiceMappingRegistry.rb",
    "wsdl/confluenceservice-v1.wsdl",
    "wsdl/confluenceservice-v2.wsdl"
  ]
  s.homepage = "http://confluence4r.rubyhaus.org"
  s.licenses = ["ASL v2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.10"
  s.summary = "Confluence SOAP Library"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<soap2r>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
    else
      s.add_dependency(%q<soap2r>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    end
  else
    s.add_dependency(%q<soap2r>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
  end
end

