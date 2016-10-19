class Newsletter < ActiveRecord::Base

  validates_presence_of :email

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :email]
    #admin.fieldsets = [{:fields => [:title, :subtitle, :image, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    #admin.fields = {}
    # admin.fields = {
    #   :seo_description => { :type => :clear_text }
    # }
  end

end
