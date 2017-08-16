class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.string :nombre
      t.references :diagnosis, foreign_key: true

      t.timestamps
    end
  end
end
