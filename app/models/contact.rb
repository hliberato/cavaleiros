class Contact < ActiveRecord::Base

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :name, :email, :phone, :subject, :content]
    #admin.fieldsets = [{:fields => [:title, :subtitle, :image, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    # admin.fields = {
    #   :seo_description => { :type => :clear_text }
    # }
  end

end
