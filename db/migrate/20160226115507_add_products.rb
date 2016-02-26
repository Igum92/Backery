class AddProducts < ActiveRecord::Migration
  def change
  	Product.create	:title => 'Bluberry cupcake',:discription => 'Sweet cupcake with fresh bluberry', :price => 50, :size => 20, :is_sweet => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/chernichnii_cupcake.jpg'

	Product.create	:title => 'Chocolate macaron', :discription => 'Sweet macaron with Swess chocolate', :price => 55, :size => 20, :is_sweet => true, :is_veg => true, :is_best_offer => false, :path_to_image => '/images/chockolade_macaron.JPG'

  	Product.create	:title => 'Hot Dog', :discription => 'Cute Hot Dog with real meat sousages', :price => 45, :size => 30, :is_sweet => false, :is_veg => false, :is_best_offer => true, :path_to_image => '/images/hot_dog.jpg'

  	Product.create	:title => 'Strawberry cupcake', :discription => 'Sweet cupcake with real strawberry', :price => 50, :size => 20, :is_sweet => true, :is_veg => false, :is_best_offer => true, :path_to_image => '/images/klubnichnii_cupcake.jpg'

  	Product.create	:title => 'Lemon cupcake', :discription => 'Sweet cupcake with lemon sourness', :price => 50, :size => 20, :is_sweet => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/lemon_cupcake.jpg'

  	Product.create	:title => 'Mint cupcake', :discription => 'Fresh sweet cupcake', :price => 50, :size => 20, :is_sweet => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/mint_macaron.jpg'

  	Product.create	:title => 'Rose cupcake', :discription => 'Sweet cupcake for vegeterian food lover', :price => 50, :size => 20, :is_sweet => true, :is_veg => true, :is_best_offer => true, :path_to_image => '/images/rose_cupcake.jpg'

  	Product.create	:title => 'Chocolate cake', :discription => 'A layered bun with chocolate filling', :price => 55, :size => 35, :is_sweet => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/s_chocoladom.jpg'

  	Product.create	:title => 'Bun with raisins', :discription => 'A layered bun with raisins', :price => 40, :size => 35, :is_sweet => true, :is_veg => true, :is_best_offer => false, :path_to_image => '/images/s_izumom.jpg'

  	Product.create	:title => 'Bun with raspberry', :discription => 'A layered bun with raspberry jam', :price => 60, :size => 50, :is_sweet => true, :is_veg => true, :is_best_offer => true, :path_to_image => '/images/s_malinoi.jpg'

  	Product.create	:title => 'Bun with cheese', :discription => 'A layered bun with cheese', :price => 50, :size => 50, :is_sweet => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/s_sirom.jpg'

  end
end
