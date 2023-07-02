class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|

      t.timestamps
      
      t.string :name
      t.text :body
      
      t.integer :price
      t.integer :count
      t.boolean :order_status
    end
  end
end
