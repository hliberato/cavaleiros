class Address < ActiveRecord::Base

  belongs_to :store

  config_my_admin do |admin|
    #admin.application = "content"
    admin.list_display = [:id, :address, :number, :complement, :state, :country, :phone, :mobile, :zipcode, :longitude, :latitude]
    admin.fieldsets = [{:fields => [:address, :number, :complement, :state, :phone, :mobile, :zipcode, :longitude, :latitude, :seo_title, :seo_description, :seo_keywords]}]
    #admin.permissions = [:list, :update, :export]
    admin.fields = {
      #Brazil states
      :state => {
        :type => :list_string,
        :collection => Proc.new {["AC","AL","AP","AM","BA","CE","DF","ES","GO","MA","MT",
          "MS","MG","PA","PB","PR","PE","PI","RJ","RN","RS","RO","RR","SC","SP","SE","TO"]}
      },
      :seo_description => { :type => :clear_text }
    }
  end

end
