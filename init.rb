require 'redmine'

Redmine::Plugin.register :redmine_import_issues do
  name 'Import Issues plugin'
  author 'Taki.Joe'
  description 'This plugin allows to import issues and time entries'
  version '2.0.0'
  url 'https://github.com/takijoe'
  author_url 'https://github.com/takijoe'
  
  project_module :redmine_import_issues do
    permission :importer_issues, :importer_issues => [:index, :prepare, :change_file_recover, 
                                                    :recover, :download, :overview, :create, 
                                                    :change_file, :load_values_for_field, 
                                                    :load_values_for_time_entry, :update, 
                                                    :validate, :import
                                                  ]
    permission :importer_issues_delete_templates, :importer_issues => [:destroy]
   
    menu :project_menu, :importer_issues, { :controller => 'importer_issues', :action => 'index' }, 
        :caption => :label_importer_issues, :param => :project_id
  end
  
end
