class CreateAuthorBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :author_books do |t|
    	t.integer "book_id", null: false
    	t.integer "author_id", null: false
    	t.index ["author_id"], name: "index_author_books_on_author_id"
    	t.index ["book_id"], name: "index_author_books_on_book_id"

      t.timestamps
    end
  end
end
