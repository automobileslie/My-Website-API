class CreateParagraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :paragraphs do |t|
      t.integer :post_id
      t.text :description
      t.timestamps
    end
  end
end
