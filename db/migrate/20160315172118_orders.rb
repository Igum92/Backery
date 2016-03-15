class Orders < ActiveRecord::Migration
  def change

  	  	create_table :orders do |t|
  		t.text :name
  		t.text :phone
  		t.text :address
  		t.text :datestamp

  		t.timestamps

	  end
	end
end