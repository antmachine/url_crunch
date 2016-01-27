class FixUrlColumnName < ActiveRecord::Migration
  def change
    rename_column :urls, :orginal_url, :original_url
  end
end
