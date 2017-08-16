class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :nombre
      t.string :rut
      t.datetime :fecha_nacimiento
      t.string :telefono
      t.string :celular
      t.string :direccion
      t.string :ocupacion
      t.string :derivado

      t.timestamps
    end
  end
end
