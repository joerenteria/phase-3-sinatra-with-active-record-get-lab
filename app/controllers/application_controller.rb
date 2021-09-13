class ApplicationController < Sinatra::Base
    set :default_content_type,"application/json"

    get '/bakeries' do
        bakeries = Bakery.all
        bakeries.to_json
    end

    get '/bakeries/:id' do
        bakeries = Bakery.find(params[:id])
        bakeries.to_json
    end

    get '/baked_goods/by_price' do
        bakeries = Bakery.all.order(:price)
        bakeries.to_json
    end

    get '/baked_goods/most_expensive' do
        bakeries = Bakery.all.order(:price).max
        bakeries.to_json
    end
end
