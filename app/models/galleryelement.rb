class Galleryelement < ActiveRecord::Base
  
  belongs_to :gallery
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", my_admin: "150x150>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  config_my_admin do |admin|
    admin.list_display = [:title, :subtitle, :image]
    admin.fieldsets = [{:fields => [:title, :subtitle, :image]}]
  end
  
end
