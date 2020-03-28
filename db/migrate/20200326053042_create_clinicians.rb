class CreateClinicians < ActiveRecord::Migration[6.0]
  def change
    create_table :clinicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :suffix
      t.string :phone

      t.timestamps
    end
  end
end
