require 'redmine'

base_path = File.dirname(__FILE__)
if Rails.configuration.respond_to?(:autoloader) && Rails.configuration.autoloader == :zeitwerk
  Rails.autoloaders.each { |loader| loader.ignore("#{base_path}/lib") }
end

Redmine::Plugin.register :redmineFaTranslation do
  name 'Redmine Fa plugin'
  author 'RNahal'
  description 'This is an updated Persian Translation plugin for Redmine'
  version '0.1.0'
  requires_redmine :version_or_higher => '4.0.0'
  url 'https://nahal.app'
end

(Loofah::VERSION >= "2.3.0" ? Loofah::HTML5::SafeList : Loofah::HTML5::WhiteList)::ALLOWED_PROTOCOLS.replace RedmineCkeditor.allowed_protocols
