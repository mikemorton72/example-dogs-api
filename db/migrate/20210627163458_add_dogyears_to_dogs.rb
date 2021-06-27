class AddDogyearsToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :dog_years, :integer
  end
end
