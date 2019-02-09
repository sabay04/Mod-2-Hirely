class CreateItemReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :item_reviews do |t|
      t.references :hire, foreign_key: true
      t.boolean :reaction
      t.string :content

      t.timestamps
    end
  end
end
