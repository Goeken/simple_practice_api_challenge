class CreateCptCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :cpt_codes do |t|
      t.string :description
      t.integer :duration
      t.integer :rate
      t.boolean :call_to_book
      t.references :clinician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
