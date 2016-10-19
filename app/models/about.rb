class About < ActiveRecord::Base

  validates_presence_of :title
  validates :title, uniqueness: true

  has_attached_file :banner, styles: { medium: "300x300>", thumb: "100x100>", my_admin: "150x150>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :banner, content_type: /\Aimage\/.*\Z/

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :title, :subtitle, :content, :banner]
    admin.fieldsets = [{:fields => [:title, :subtitle, :content, :banner, :seo_title, :seo_description, :seo_keywords]}]
    admin.fields = {
      :seo_description => { :type => :clear_text }
    }
    #admin.permissions = [:list, :update, :export]
    #admin.fields = {}
  end

end
