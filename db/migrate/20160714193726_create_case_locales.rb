class CreateCaseLocales < ActiveRecord::Migration
  def change
    create_table :case_locales do |t|
      t.references :case
      t.references :locale
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
