class Store < ActiveRecord::Base

  validates_presence_of :title
  validates :title, uniqueness: true

  # Adding adress
  has_many :address, :dependent => :destroy
  accepts_nested_attributes_for :address, :allow_destroy => true, :reject_if => proc { |a| a[:address].blank? }

  # Addming social networks
  has_many :social, :dependent => :destroy
  accepts_nested_attributes_for :social, :allow_destroy => true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", my_admin: "150x150>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :title, :subtitle, :image]
    admin.fieldsets = [{:fields => [:title, :subtitle, :image, :address, :social, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      :address => {
        :type => :has_one_edit,
        :can_add => true,
        :can_destroy => false,
        :limit => 1
      },
      :social => {
        :type => :has_one_edit,
        :can_add => true,
        :can_destroy => false,
        :limit => 1
      },
      :seo_description => { :type => :clear_text }
    }
  end

end
