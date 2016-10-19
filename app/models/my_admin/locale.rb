class MyAdmin::Locale < ActiveRecord::Base
  
  self.table_name = "my_admin_locales"
  
  config_my_admin do |admin|
    admin.application = "authentication"
  end
  
  def to_s
    self.name
  end
  
end