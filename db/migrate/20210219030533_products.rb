class Products < ActiveRecord::Migration[6.0]
  def change
    create_table :Products do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.string :description 
      t.string :information 
    
      t.timestamps
    end
    
    
  end
end
