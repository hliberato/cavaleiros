class AddLocalesToCases < ActiveRecord::Migration
  def change
    add_column :cases, :description_pt, :text
    add_column :cases, :description_en, :text
    add_column :cases, :description_es, :text
  end
end
