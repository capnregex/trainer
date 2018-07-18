class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :key
      t.string :acronym
      t.string :title
      t.text :desc

      t.timestamps
    end
    add_index :entries, :key
    add_index :entries, :acronym
    add_index :entries, :title
  end
end
