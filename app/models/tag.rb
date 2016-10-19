class Tag < ActiveRecord::Base

  has_many :tag_products, :dependent => :destroy

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :title]
    #admin.fieldsets = [{:fields => [:title, :subtitle, :image, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    # admin.fields = {
    #   :seo_description => { :type => :clear_text }
    # }
  end

  def to_s
    self.title
  end

end
