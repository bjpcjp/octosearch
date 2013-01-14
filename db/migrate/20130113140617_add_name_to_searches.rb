class AddNameToSearches < ActiveRecord::Migration
 def up
    change_table :searches do |t|
      t.boolean :name, :default => "tbd"
    end
    Search.update_all ["name = ?", "tbd"]
  end
 
  def down
    remove_column :searches, :name
  end
end
