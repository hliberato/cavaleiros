class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.string :facebook
      t.string :instagram
      t.string :google
      t.string :pinterest
      t.string :snapchat
      t.string :twitter
      t.string :foursquare
      t.string :slideshare
      t.references :store
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
