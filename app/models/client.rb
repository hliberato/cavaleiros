class Client < ActiveRecord::Base

  validates_presence_of :name
  validates :name, uniqueness: true

  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>", my_admin: "150x150>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :name, :content, :url,  :logo]
    admin.fieldsets = [{:fields => [:name, :content, :url, :logo, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      :seo_description => { :type => :clear_text }
    }
  end

end
