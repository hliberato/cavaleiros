class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.attachment :image
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
