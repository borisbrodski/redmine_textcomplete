module RedmineTextcomplete
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context={} )
      js = javascript_include_tag 'jquery.textcomplete.min.js', :plugin => 'redmine_textcomplete'
      js += javascript_include_tag 'redmine_textcomplete.js', :plugin => 'redmine_textcomplete'
      css = stylesheet_link_tag 'jquery.textcomplete.css', :plugin => 'redmine_textcomplete'
      js + css
    end
    def view_layouts_base_body_bottom(context={})
      '
        <script>
          install_textcomplete("#content_text");
          install_textcomplete("#issue_description");
          install_textcomplete("#issue_notes");
        </script>
      '
    end
  end
end
