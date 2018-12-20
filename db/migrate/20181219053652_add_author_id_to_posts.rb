class AddAuthorIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :author_id, :integer
    remove_column :posts, :author, :string
  end
end
