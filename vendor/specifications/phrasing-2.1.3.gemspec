# -*- encoding: utf-8 -*-
# stub: phrasing 2.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "phrasing".freeze
  s.version = "2.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tomislav Car".freeze, "Damir Svrtan".freeze]
  s.date = "2013-10-22"
  s.description = "Phrasing!".freeze
  s.email = "contact@infinum.co".freeze
  s.homepage = "http://github.com/infinum/phrasing".freeze
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Edit phrases inline for Rails applications!".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.1.0"])
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1"])
      s.add_runtime_dependency(%q<haml-rails>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.1.0"])
      s.add_dependency(%q<railties>.freeze, [">= 3.1"])
      s.add_dependency(%q<haml-rails>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<railties>.freeze, [">= 3.1"])
    s.add_dependency(%q<haml-rails>.freeze, [">= 0"])
  end
end
