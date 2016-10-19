class Product < ActiveRecord::Base
  
  before_save :process_tag
  after_initialize :get_list_tags
  has_many :tag_products, :dependent => :destroy
  has_many :tags, :through => :tag_products
  accepts_nested_attributes_for :tag_products
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", my_admin: "150x150>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  attr_accessor :list_tags
  
  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :title, :subtitle, :content, :image, :tags]
    admin.fieldsets = [{:fields => [:title, :subtitle, :content, :image, :list_tags, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = { 
      :list_tags => {
        :type => :tag_list, 
        :collection => Proc.new {Tag.all.map { |e| [e.title] } }
      }
    }
  end
  
  def get_list_tags
    self.list_tags = self.tags.map { |t| t.title } if list_tags.blank?
  end
  
  def process_tag
    self.tags = []
    unless list_tags.blank?
      list_tags.each do |t|
        unless t.blank?
          tag = Tag.find_or_create_by(title: t)
          self.tags << tag
        end
      end
    end
  end
  
end