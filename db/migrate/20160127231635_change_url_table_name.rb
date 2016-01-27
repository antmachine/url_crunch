class ChangeUrlTableName < ActiveRecord::Migration
  def change
    rename_table :url, :urls
  end
end
