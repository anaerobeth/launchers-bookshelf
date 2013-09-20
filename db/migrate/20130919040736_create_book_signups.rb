class CreateBookSignups < ActiveRecord::Migration
  def change
    create_table :book_signups do |t|
      t.integer :launcher_id
      t.integer :book_id

      t.timestamps
    end
  end
end
