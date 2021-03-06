class CreateProducts < ActiveRecord::Migration
  def change

  	create_table :products do |t|
  		t.string :title
  		t.text :discription
  		t.decimal :price
  		t.decimal :size
  		t.boolean :is_sweet
  		t.boolean :is_veg
  		t.boolean :is_best_offer
  		t.string :path_to_image

  		t.timestamps

  	end
  end
end
