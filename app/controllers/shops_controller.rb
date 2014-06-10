class ShopsController < ApplicationController

# need to fix this so that mothership is connected to the store
 def create
    Mothership.create("name" => params["name"],
                 "origin_id" => params["chosen_origin_id"],
                 "web_url" => params["web_url"])

    Store.create("yelp_url" => params["yelp_url"],
                 "location_id" => params["chosen_location_id"])

    redirect_to "/"
  end
end
