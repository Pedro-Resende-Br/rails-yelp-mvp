class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.string :content
      t.references :Restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end