# -*- encoding: utf-8 -*-
# stub: jquery-ui-themes 0.0.12 ruby lib

Gem::Specification.new do |s|
  s.name = "jquery-ui-themes".freeze
  s.version = "0.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mark Asson".freeze]
  s.date = "2016-04-14"
  s.description = "Allow inclusion of the pre built jquery themes in the asset pipeline without having to edit the files each time.".freeze
  s.email = ["mark@fatdude.net".freeze]
  s.homepage = "https://github.com/fatdude/jquery-ui-themes-rails".freeze
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Simple integration of jquery themes into the asset pipeline".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>.freeze, [">= 0"])
    else
      s.add_dependency(%q<httparty>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>.freeze, [">= 0"])
  end
end
