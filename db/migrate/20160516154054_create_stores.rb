class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :title
      t.string :subtitle
      t.attachment :image
      t.integer :phone
      t.string :openingWeek
      t.string :closingWeek
      t.string :openingWeekend
      t.string :closingWeekend
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
