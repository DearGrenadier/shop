class CreateMattresses < ActiveRecord::Migration
  def change
    create_table :mattresses do |t|
      t.string :img_url
      t.timestamps
    end
  end
end
