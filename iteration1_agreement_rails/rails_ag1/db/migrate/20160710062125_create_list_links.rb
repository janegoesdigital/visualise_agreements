class CreateListLinks < ActiveRecord::Migration
  def change
    create_table :list_links do |t|
      t.string :name
      t.string :title
      t.string :author

      t.timestamps null: false
    end
  end
end
