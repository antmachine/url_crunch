class CreateUrlTable < ActiveRecord::Migration
  def change
    create_table :url do |t|
      t.column :orginal_url, :text
      t.column :crunched_url, :text
    end
  end
end
