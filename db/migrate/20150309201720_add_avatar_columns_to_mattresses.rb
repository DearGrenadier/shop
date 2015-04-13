class AddAvatarColumnsToMattresses < ActiveRecord::Migration
  def self.up     
    change_table :mattresses do |t|  
      t.has_attached_file :avatar     
    end
    rename_column :mattresses, :img_url, :title
  end
end
