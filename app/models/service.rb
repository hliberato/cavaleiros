class Service < ActiveRecord::Base

  validates_presence_of :title
  validates :title, uniqueness: true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", my_admin: "150x150>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :title, :content, :image]
    admin.fieldsets = [{:fields => [:title, :content, :image, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      :seo_description => { :type => :clear_text }
    }
  end

end
