class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # add routes
   get '/bakeries' do 
    bakeries = Bakery.all
      "Hello World"
    bakeries.to_json
    #get all bakeries from the database
    #send them back as json array
   end 

   get '/bakeries/:id' do 
    bakeries = Bakery.find(params[:id])

    bakeries.to_json(include: :baked_goods)
   end 

   get '/baked_goods' do 
    goods = BakedGood.all
    
    goods.to_json
   end 

   get '/baked_goods/by_price' do
      priced = BakedGood.all.order(:title desc:)
    # bakeries.to_json(only: [:name, :price, :bakery_id])
   end 

   get '/baked_goods/most_expensive' do
   end 

end
