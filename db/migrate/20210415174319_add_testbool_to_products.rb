class AddTestboolToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :testbool, :boolean, default: false
  end
end
