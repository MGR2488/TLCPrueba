class CreateTrabajadoresLists < ActiveRecord::Migration[5.2]
  def change
    create_table :trabajadores_lists do |t|
      t.string :Nombres
      t.text :Apellidos

      t.timestamps
    end
  end
end
