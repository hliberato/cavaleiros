class CaseLocale < ActiveRecord::Base
  
  belongs_to :case
  belongs_to :locale, :class_name => "MyAdmin::Locale", :foreign_key => "locale_id"
  
  config_my_admin do |admin|
    admin.fieldsets = [{:fields => [:title, :description]}]
  end
  
end