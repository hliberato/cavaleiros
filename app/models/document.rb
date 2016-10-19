class Document < ActiveRecord::Base

  validates_presence_of :title
  validates :title, uniqueness: true

  has_attached_file :file, :default_url => "/files/:style/missing.doc"
  do_not_validate_attachment_file_type :file

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :title, :subtitle, :content, :file]
    admin.fieldsets = [{:fields => [:title, :subtitle, :content, :file, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      :file => { :type => :file },
      :seo_description => { :type => :clear_text }
    }
  end

end
