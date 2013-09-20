class CreateBookLaunchers < ActiveRecord::Migration
  def change
    create_table :book_launchers do |t|
      t.integer :book_id
      t.integer :launcher_id

      t.timestamps
    end
  end
end
