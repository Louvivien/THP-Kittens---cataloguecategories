class AddColumnsToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :total, :decimal
    add_column :carts, :subtotal, :decimal

  end
end
