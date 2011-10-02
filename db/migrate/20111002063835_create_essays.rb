class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :title
      t.text :content
      t.references :topic

      t.timestamps
    end
    add_index :essays, :topic_id
  end
end
