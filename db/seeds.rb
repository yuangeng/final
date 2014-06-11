Origin.delete_all
japan = Origin.create("origin_name" => "Japan")
us = Origin.create("origin_name" => "United States")

Location.delete_all
chi = Location.create("name" => "Chicago")
nyc = Location.create("name" => "New York")

Mothership.delete_all
rm = Mothership.create("name" => "Ramen Misoya", "origin_id" => japan.id, "web_url" => "http://www.misoya.net/english/shop/abroad.html")
wa = Mothership.create("name" => "Wasabi", "origin_id" => us.id, "web_url" => "http://www.wasabichicago.com/")
ip = Mothership.create("name" => "Ippudo", "origin_id" => japan.id, "web_url" => "http://www.ippudony.com/")
mr = Mothership.create("name" => "Mu Ramen", "origin_id" => us.id, "web_url" => "http://ramennyc.wix.com/popup")
ir = Mothership.create("name" => "Ivan Ramen", "origin_id" => japan.id, "web_url" => "http://www.ivanramen.com/")


Store.delete_all
rmch1 = Store.create("store_name" => "Ramen Misoya Chicago", "mothership_id" => rm.id, "address" => "1584 S Busse Rd, Mount Prospect, IL, 60056", "location_id" => chi.id, "tel" => "(847) 437-4590", "yelp_url" => "http://www.yelp.com/biz/ramen-misoya-mount-prospect", "web_url" => "https://www.facebook.com/RamenMisoyaChicago")
rmch2 = Store.create("store_name" => "Ramen Misoya NYC", "mothership_id" => rm.id, "address" => "129 Second Avenue (between St. Marks Place and 7th Street), New York, NY, 10003", "location_id" => nyc.id, "tel" => "(212) 677-4825", "yelp_url" => "http://www.yelp.com/biz/ramen-misoya-new-york", "web_url" => "http://www.misoyanyc.com/")
wach1 = Store.create("store_name" => "Wasabi", "mothership_id" => wa.id, "address" => "2115 N Milwaukee Ave, Chicago, IL, 60647", "location_id" => chi.id, "tel" => "(773) 227-8180", "yelp_url" => "http://www.yelp.com/biz/wasabi-chicago", "web_url" => "http://www.wasabichicago.com/")
ipny1 = Store.create("store_name" => "Ippudo NY", "mothership_id" => ip.id, "address" => "65 4th Ave (between 9th Street and 10th Street), New York, NY, 10003", "location_id" => nyc.id, "tel" => "(212) 388-0088", "yelp_url" => "http://www.yelp.com/biz/ippudo-ny-new-york", "web_url" => "http://www.ippudony.com/")
ipny2 = Store.create("store_name" => "Ippudo Westside", "mothership_id" => ip.id, "address" => "321 West 51st Street, New York, NY, 10019", "location_id" => nyc.id, "tel" => "(212) 974-2500", "yelp_url" => "http://www.yelp.com/biz/ippudo-westside-new-york", "web_url" => "http://www.ippudony.com/")
mrny1 = Store.create("store_name" => "Mu Ramen", "mothership_id" => mr.id, "address" => "5106 Vernon Blvd, Long Island City, NY, 11101", "location_id" => nyc.id, "tel" => "(917) 868-8903", "yelp_url" => "http://www.yelp.com/biz/mu-ramen-long-island-city", "web_url" => "http://ramennyc.wix.com/popup")
irny2 = Store.create("store_name" => "Ivan Ramen Slurp Shop", "mothership_id" => ir.id, "address" => "600 11th Ave, New York, NY, 10036", "location_id" => nyc.id, "tel" => "(212) 582-7942", "yelp_url" => "http://www.yelp.com/biz/ivan-ramen-slurp-shop-new-york", "web_url" => "http://www.ivanramen.com/")
irny1 = Store.create("store_name" => "Ivan Ramen New York", "mothership_id" => ir.id, "address" => "25 Clinton Street, New York, NY, 10002", "location_id" => nyc.id, "tel" => "(646) 678-3859", "yelp_url" => "http://www.yelp.com/biz/ivan-ramen-new-york", "web_url" => "http://www.ivanramen.com/")

Ramen.delete_all
ramen_miso = Ramen.create("name" => "Miso")
ramen_tonkotsu = Ramen.create("name" => "Tonkotsu")
ramen_shio = Ramen.create("name" => "Shio")
ramen_shoyu = Ramen.create("name" => "Shoyu")

Broth_Base.delete_all
base_tonkotsu = Broth_Base.create("name" => "Tonkotsu")
base_chicken = Broth_Base.create("name" => "Chicken")
base_seafood = Broth_Base.create("name" => "Seafood")
base_vegetarian = Broth_Base.create("name" => "Vegetarian")

Broth_Seasoning.delete_all
seasoning_miso = Broth_Seasoning.create("name" => "Miso")
seasoning_shio = Broth_Seasoning.create("name" => "Shio")
seasoning_shoyu = Broth_Seasoning.create("name" => "Shoyu")

Broth_Weight.delete_all
weight_rich = Broth_Weight.create("name" => "rich")
weight_medium = Broth_Weight.create("name" => "medium")
weight_light = Broth_Weight.create("name" => "light")

Noodle.delete_all
noodle_thickw = Noodle.create("name" => "Thick and wavy")
noodle_thinw = Noodle.create("name" => "Thin and wavy")
noodle_thins = Noodle.create("name" => "Thin and straight")

Dish.delete_all
kome = Dish.create("dish_name" => "Kome Miso", "ramen_id" => ramen_miso.id, "broth_weight_id" => noodle_thickw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_miso.id, "noodle_id" => noodle_thickw.id, "description" => "Hokkaido-style komen miso ramen, made of rice, which is the standard miso. Intense falvor with rich aroma")
mame = Dish.create("dish_name" => "Mame Miso", "ramen_id" => ramen_miso.id, "broth_weight_id" => noodle_thickw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_miso.id, "noodle_id" => noodle_thickw.id, "description" => "Made of beans, a dark-colored miso. Relatively to other miso ramen, this one has the sweetest and richest texture")
shiro = Dish.create("dish_name" => "Shiro Miso", "ramen_id" => ramen_miso.id, "broth_weight_id" => noodle_thinw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_miso.id, "noodle_id" => noodle_thickw.id, "description" => "Compared to other miso ramens, Shiro Miso ramen is less intense in flavor and sweeter. It is made of a light-colored miso")
shiromaru = Dish.create("dish_name" => "Shiromaru Hakata Classic", "ramen_id" => ramen_tonkotsu.id, "broth_weight_id" => noodle_thinw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_shio.id, "noodle_id" => noodle_thins.id, "description" => "Silky tonkotsu (pork) soup noodles topped with pork loin chashu, sesame kikurage mushrooms, memma, red pickled ginger, & scallions")
akamaru = Dish.create("dish_name" => "Akamaru Modern", "ramen_id" => ramen_tonkotsu.id, "broth_weight_id" => noodle_thickw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_miso.id, "noodle_id" => noodle_thins.id, "description" => "A more bold, modern translation of the original pork broth; thin noodles topped with Ippudo’s secret “Umami Dama” miso paste, pork chashu, cabbage, sesame kikurage mushrooms, scallions, and fragrant garlic oil.")
karaka = Dish.create("dish_name" => "Karaka Men ", "ramen_id" => ramen_tonkotsu.id, "broth_weight_id" => noodle_thickw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_shio.id, "noodle_id" => noodle_thins.id, "description" => "Made from a tonkotsu broth with pieces of pork belly, kikurage mushrooms, cabbage, onion, ground pork and scallions this hearty bowl of ramen has enough spices to clear out your sinuses and let you taste food again")
tonkotsu2 = Dish.create("dish_name" => "Tonkotsu 2.0", "ramen_id" => ramen_tonkotsu.id, "broth_weight_id" => noodle_thinw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_shio.id, "noodle_id" => noodle_thins.id, "description" => "The original tonkotsu (pork) broth with an added kick; thin noodles topped with Ippudo’s special blend of hot spices, pork chashu, cabbage, sesame kikurage mushrooms, scallions and fragrant garlic ")
spicymiso = Dish.create("dish_name" => "Spicy Miso", "ramen_id" => ramen_miso.id, "broth_weight_id" => noodle_thinw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_miso.id, "noodle_id" => noodle_thins.id, "description" => "Red miso and pork based soup, topped with scallion, chopped pork, menma, corn, sesame and chili oil")
tokyoshio = Dish.create("dish_name" => "Tokyo Shio Ramen", "ramen_id" => ramen_shio.id, "broth_weight_id" => noodle_thins.id, "broth_base_id" => base_chicken.id, "broth_seasoning_id" => seasoning_shio.id, "noodle_id" => noodle_thins.id, "description" => "Sea salts, dashi and chicken broth, pork chashu, rye noodle")
shoyu = Dish.create("dish_name" => "Shoyu Ramen", "ramen_id" => ramen_shoyu.id, "broth_weight_id" => noodle_thins.id, "broth_base_id" => base_chicken.id, "broth_seasoning_id" => seasoning_shoyu.id, "noodle_id" => noodle_thins.id, "description" => "Soy sauce, dashi and chicken broth, pork chashu, rye noodle")
tonkotsu = Dish.create("dish_name" => "Tonkotsu Ramen", "ramen_id" => ramen_tonkotsu.id, "broth_weight_id" => noodle_thinw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_shio.id, "noodle_id" => noodle_thinw.id, "description" => "Egg noodle, rich pork broth, berkshire pork belly, soft boiled egg, marinated bamboo shoot, scallion, sesame, black wood ear mushroom, garlic oil")
spicygarlic = Dish.create("dish_name" => "Spicy Roasted Garlic Miso Ramen", "ramen_id" => ramen_miso.id, "broth_weight_id" => noodle_thinw.id, "broth_base_id" => base_tonkotsu.id, "broth_seasoning_id" => seasoning_miso.id, "noodle_id" => noodle_thinw.id, "description" => "Egg noodle, rich pork broth, berkshire pork belly, soft boiled egg, marinated bamboo shoot, bean sprouts, sesame, scallion, roasted garlic, garlic chips, chili pepper, sesame oil")

Availability.delete_all
Availability.create("dish_id" => kome.id, "store_id" => rmch1.id, "mothership_id" => rm.id)
Availability.create("dish_id" => kome.id, "store_id" => rmch2.id, "mothership_id" => rm.id)
Availability.create("dish_id" => mame.id, "store_id" => rmch1.id, "mothership_id" => rm.id)
Availability.create("dish_id" => mame.id, "store_id" => rmch2.id, "mothership_id" => rm.id)
Availability.create("dish_id" => shiro.id, "store_id" => rmch1.id, "mothership_id" => rm.id)
Availability.create("dish_id" => shiro.id, "store_id" => rmch2.id, "mothership_id" => rm.id)
Availability.create("dish_id" => shiromaru.id, "store_id" => ipny1.id, "mothership_id" => ip.id)
Availability.create("dish_id" => shiromaru.id, "store_id" => ipny2.id, "mothership_id" => ip.id)
Availability.create("dish_id" => akamaru.id, "store_id" => ipny1.id, "mothership_id" => ip.id)
Availability.create("dish_id" => akamaru.id, "store_id" => ipny2.id, "mothership_id" => ip.id)
Availability.create("dish_id" => karaka.id, "store_id" => ipny1.id, "mothership_id" => ip.id)
Availability.create("dish_id" => karaka.id, "store_id" => ipny2.id, "mothership_id" => ip.id)
Availability.create("dish_id" => tonkotsu2.id, "store_id" => mrny1.id, "mothership_id" => mr.id)
Availability.create("dish_id" => spicymiso.id, "store_id" => mrny1.id, "mothership_id" => mr.id)
Availability.create("dish_id" => tokyoshio.id, "store_id" => irny2.id, "mothership_id" => ir.id)
Availability.create("dish_id" => tokyoshio.id, "store_id" => irny1.id, "mothership_id" => ir.id)
Availability.create("dish_id" => shoyu.id, "store_id" => irny2.id, "mothership_id" => ir.id)
Availability.create("dish_id" => shoyu.id, "store_id" => irny1.id, "mothership_id" => ir.id)
Availability.create("dish_id" => tonkotsu.id, "store_id" => wach1.id, "mothership_id" => wa.id)
Availability.create("dish_id" => spicygarlic.id, "store_id" => wach1.id, "mothership_id" => wa.id)

User.delete_all
jeff = User.create("username" => "jeff", "password" => "hockey", "name" => "Jeff Cohen")
brian = User.create("username" => "brian", "password" => "homework", "name" => "Brian Eng")


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
