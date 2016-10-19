class CreateMediaboxes < ActiveRecord::Migration
  def change
    create_table :mediaboxes do |t|
      t.string :title
      t.string :subtitle
      t.integer :position
      t.attachment :image
      t.string :url
      t.boolean :externalUrl
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
