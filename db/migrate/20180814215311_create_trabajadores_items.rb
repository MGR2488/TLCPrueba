class CreateTrabajadoresItems < ActiveRecord::Migration[5.2]
  def change
    create_table :trabajadores_items do |t|
      t.string :content
      t.references :trabajadores_list, foreign_key: true

      t.timestamps
    end
  end
end
