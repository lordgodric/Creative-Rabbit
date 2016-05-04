class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.integer :post_id
      t.integer :designer_id

      t.timestamps null: false
    end
  end
end
