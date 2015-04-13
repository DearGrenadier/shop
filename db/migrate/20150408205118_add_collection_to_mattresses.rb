class AddCollectionToMattresses < ActiveRecord::Migration
  def change
    add_column :mattresses, :collection, :string
  end
end
