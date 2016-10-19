class CreateGalleryelements < ActiveRecord::Migration
  def change
    create_table :galleryelements do |t|
      t.string :title
      t.string :subtitle
      t.attachment :image
      t.references :gallery
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
