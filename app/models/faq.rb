class Faq < ActiveRecord::Base

  validates_presence_of :question, :answer
  validates :question, uniqueness: true

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :question, :answer, :position]
    #admin.fieldsets = [{:fields => [:title, :subtitle, :image, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      :seo_description => { :type => :clear_text },
      :order => {:type => :integer}
    }
  end

end
