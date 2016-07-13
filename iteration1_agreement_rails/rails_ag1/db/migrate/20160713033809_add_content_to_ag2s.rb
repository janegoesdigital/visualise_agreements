class AddContentToAg2s < ActiveRecord::Migration
  def change
    add_column :ag2s, :content, :text
  end
end
