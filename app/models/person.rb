class Person < ActiveRecord::Base

  validates_presence_of :name, :born

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :name, :born, :phone, :email]
    admin.fieldsets = [{:fields => [:name, :born, :phone, :email, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      :seo_description => { :type => :clear_text },
      :born => {:type => :date}
    }
  end

end
