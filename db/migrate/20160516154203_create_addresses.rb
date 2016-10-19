class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.integer :number
      t.string :complement
      t.string :state
      t.string :country
      t.string :phone
      t.integer :mobile
      t.string :zipcode
      t.string :latitude
      t.string :longitude
      t.references :store
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
