class AddStatusToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :status, :boolean , default: false, null: false
  end
end
