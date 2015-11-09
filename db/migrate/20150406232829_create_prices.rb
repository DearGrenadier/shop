class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :price
      t.belongs_to :size, index: true
      t.timestamps
    end
  end
end
