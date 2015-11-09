class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :size, index: true

      t.timestamps
    end
  end
end
