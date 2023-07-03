class AddPartToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :account_id, :integer 
    add_column :articles, :as_type, :integer
    add_column :articles, :status, :integer
  end
end
