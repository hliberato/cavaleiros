class CreateCustomercares < ActiveRecord::Migration
  def change
    create_table :customercares do |t|
      t.string :title
      t.string :title
      t.text :content
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
