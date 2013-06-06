class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :email
      t.string :telefono
      t.string :direccion
      t.text :consulta

      t.timestamps
    end
  end
end
