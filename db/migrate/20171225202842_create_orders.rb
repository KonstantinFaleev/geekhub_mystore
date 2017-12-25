class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :comment
      t.string :email
      t.string :phone
      t.string :pay_type

      t.timestamps
    end
  end
end
