class Gallery < ActiveRecord::Base

  validates_presence_of :title
  validates :title, uniqueness: true

  has_many :galleryelement, :dependent => :destroy
  accepts_nested_attributes_for :galleryelement, :allow_destroy => true, :reject_if => proc { |a| a[:title].blank? }

  config_my_admin do |admin|
    #admin.application = "Default"
    admin.list_display = [:id, :title, :subtitle]
    admin.fieldsets = [{:fields => [:title, :subtitle, :galleryelement, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      :seo_description => { :type => :clear_text },
      :galleryelement => { :type => :has_many_edit, :can_add => true, :can_destroy => true }
    }
  end

end
