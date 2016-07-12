class CreatePuts < ActiveRecord::Migration
  def change
    create_table :puts do |t|
      t.string :name
      t.string :content

      t.timestamps null: false
    end
  end
end
