class AddCamposToFicha < ActiveRecord::Migration[5.2]
  def change
    add_column :fichas, :orientadora, :boolean, default: false
    add_column :fichas, :coorientadora, :boolean, default: false
  end
end
