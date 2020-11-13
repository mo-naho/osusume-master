class AddIntroToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :intro, :text
  end
end
