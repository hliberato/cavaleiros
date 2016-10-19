class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :title
      
      #Seo
      t.string :seo_title
      t.text :seo_description
      t.string :seo_keywords

      t.timestamps null: false
    end
  end
end
