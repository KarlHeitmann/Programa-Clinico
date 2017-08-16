class CreateDiagnoses < ActiveRecord::Migration[5.0]
  def change
    create_table :diagnoses do |t|
      t.text :diagnostico_y_tratamiento
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
