class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :suppliername
      t.string :primarycontact
      t.text :address
      t.string :contactno
      t.string :email
      t.string :gstno
      t.string :dlno20b
      t.string :dlno21b

      t.timestamps
    end
  end
end
