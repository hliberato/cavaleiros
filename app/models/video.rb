class Video < ActiveRecord::Base

  validates_presence_of :title
  validates :title, uniqueness: true

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :title, :subtitle, :url]
    #admin.fieldsets = [{:fields => [:title, :subtitle, :image, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    # admin.fields = {
    #   :seo_description => { :type => :clear_text }
    # }
  end

end
