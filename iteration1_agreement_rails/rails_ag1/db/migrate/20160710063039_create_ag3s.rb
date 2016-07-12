class CreateAg3s < ActiveRecord::Migration
  def change
    create_table :ag3s do |t|
      t.string :name
      t.string :title
      t.string :author

      t.timestamps null: false
    end
  end
end
