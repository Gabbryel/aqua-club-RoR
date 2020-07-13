class AddFinalToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :final, :string
  end
end
