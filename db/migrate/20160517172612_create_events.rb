class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.text :target
      t.date :start
      t.date :end
      t.text :local
      t.string :url
      t.attachment :image
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
