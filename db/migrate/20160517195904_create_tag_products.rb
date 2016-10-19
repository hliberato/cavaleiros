class CreateTagProducts < ActiveRecord::Migration
  def change
    create_table :tag_products do |t|
      t.references :tag
      t.references :product
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
