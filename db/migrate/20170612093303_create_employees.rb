class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.text :address
      t.integer :age
      t.string :company_name

      t.timestamps
    end
  end
end
