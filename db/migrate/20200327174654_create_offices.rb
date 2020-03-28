class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :city
      t.string :name
      t.string :state
      t.string :street
      t.string :phone
      t.integer :zip
      t.references :cpt_code, null: false, foreign_key: true
      t.references :clinician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
