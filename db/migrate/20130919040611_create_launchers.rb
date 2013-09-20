class CreateLaunchers < ActiveRecord::Migration
  def change
    create_table :launchers do |t|
      t.string :user_name

      t.timestamps
    end
  end
end
