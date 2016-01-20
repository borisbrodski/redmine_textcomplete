require 'redmine_textcomplete/hooks'

Redmine::Plugin.register :redmine_textcomplete do
  name 'Redmine TextComplete'
  author 'Boris Brodski'
  description 'Redmine plugin adding jquery-textcomplete support (based on existing words) to issue description, issue notes and wiki.'
  version '0.0.1'
  url 'https://github.com/borisbrodski/redmine_textcomplete.git'
  author_url 'https://github.com/borisbrodski'
end
