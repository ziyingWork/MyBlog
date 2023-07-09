class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :account_id
      t.integer :article_id
      t.integer :parent_id
      t.integer :answer_id
      t.text :content

      t.timestamps
    end
  end
end
