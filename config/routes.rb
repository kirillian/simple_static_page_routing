require 'yaml'

def yaml_file_path
  "config/simple_static_page_routing.yml"
end

def config_file_path
  if File.exists?(File.join(Rails.root, yaml_file_path))
    File.join(Rails.root, yaml_file_path)
  else
    File.join(SimpleStaticPageRouting::Engine.root, yaml_file_path)
  end
end

def yaml_settings
  @yaml_settings ||= YAML.load_file(config_file_path)
end

def static_action_files
  Dir[File.join(Rails.root,"app","views",yaml_settings["controller"],"*")]
end

def static_actions
  static_action_files.map do |filename|
    File.basename(filename).split(".").first
  end
end

Rails.application.routes.draw do
  static_actions.each do |action|
    get action => "#{yaml_settings["controller"]}##{action}", as: action
  end
end
