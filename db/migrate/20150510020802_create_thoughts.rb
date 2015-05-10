class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.references :author, index: true
      t.references :recipient, index: true
      t.text :body
      t.boolean :delivered, null: false, default: false

      t.timestamps
    end
  end
end
