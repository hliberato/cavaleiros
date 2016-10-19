class Social < ActiveRecord::Base

  belongs_to :store

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :facebook, :instagram, :google, :pinterest, :snapchat, :twitter, :foursquare, :slideshare]
    admin.fieldsets = [{:fields => [:facebook, :instagram, :google, :pinterest, :snapchat, :twitter, :foursquare, :slideshare, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      :seo_description => { :type => :clear_text }
    }
  end

end
