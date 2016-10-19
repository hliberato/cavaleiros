class Case < ActiveRecord::Base

  validates_presence_of :title
  validates :title, uniqueness: true

  has_many :case_locales, :dependent => :destroy
  accepts_nested_attributes_for :case_locales, :allow_destroy => true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", my_admin: "150x150>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :title, :subtitle, :content, :image]
    admin.fieldsets = [{:fields => [:title, :subtitle, :content, :image, :seo_title, :seo_description, :seo_keywords, :case_locales]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      :case_locales => { :type => :has_many_locale },
      :seo_description => { :type => :clear_text }
    }
  end

end
