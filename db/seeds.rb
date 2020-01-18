puts "Destroying all ramen recipes"
RamenRecipe.destroy_all

puts "Creating user seeds."
User.create!(email: 'user@user.com', password: '123456', name: Faker::FunnyName.name, city: "melbourne")
puts "Seeding Finished."

puts "Seeding the component recipe DB"
# Mushroom Truffle Shoyu Ramen
Component.create!([
  {
  component: "Broth",
  name: "chicken chintan",
  description: "This is a supremely basic chicken chintan. It has 3 ingredients not including water. It’s very light in body (for the nerds, it’s usually not higher than 2 brix) but has good flavor.\nMakes about 10 servings or so.",
  ingredients: "8 lbs chicken backs, or 8 lbs of chicken parts\n1 onion\n8 cloves garlic\nWater (I’ll use usually 4 or 5 quarts/liters)",
  directions: "1. Rinse the chicken parts in cold water. Sometimes chicken is sitting in its own juices and it’s ideal to kinda wash this off.\n2. Place the chicken in a large stock pot.\n3.Cover the chicken with water, and heat the pot on medium high heat\n4. When the contents starts to simmer, skim the froth/scum that rises to the top. You’re looking for off-color, beige or pink or brown scum. Pure white foam is actually an emulsion of fat and water, and not indicative of the myoglobin we’re trying to remove. Stir the soup a few times at this phase to ensure all scum can rise to the top.\n5. After scum free, drop the heat to the lowest setting on your stove. Cook, at just below simmer (below 200 degrees F is ideal) for 5 hours. Do not stir. Keep the contents of the pot as still as possible to promote clarity. Any agitation can incorporate fat into the soup, which gelatin loves to latch onto and will emulsify, turning the soup cloudy.\n6. After the 5 hours, add in your onion, halved and peeled, and garlic. Cook one more additional hour. Again, do not stir.\n7. Strain the soup, ideally by ladling it from the top through a fine mesh strainer into a container, to, again, avoid agitation. You can then reserve until needed. If you’re into cross-utilization of product, reserve the fat for aroma oil. But you should skim it either way to avoid having too much fat per bowl."
  },
  {
  component: "Tare",
  name: "",
  description: "The tare is super simple, and almost all of the ingredients can be found at Whole Foods / Asian markets. It also keeps for 6+ months in the fridge. Make it in advance.",
  ingredients: "450 g soy (some usukuchi is nice too, maybe 200g, but good ol’ Kikkoman is great too if you don’t want to blend)\n5 g tamari\n50 g mirin\n20 g dried mushrooms (I blend half shiitake, half porcini, and maybe a few grams of dried morel)\n12 g kombu\n15g brown sugar",
  directions: "1. The night before, or up to 24 hours before cooking, combine the soy, tamari, mirin, dried mushrooms, and kombu, in a container. Cover the container and place in the fridge and allow to steep.\n2. When ready to process, add the contents from the container to a sauce pan.\n3. Add the brown sugar\n4. Heat the contents of the pot on medium heat, stirring occasionally, until it reaches 176 F.\n5. At 176 F, fish out the kombu. Discard or use for another purpose.\n6. Continue to heat the contents until just shy of boiling (200 F or so).\n7. Cover, remove the pot from the heat, and allow the mushrooms to steep in that soy mix for 30 minutes.\n8. Strain, pressing on the solids to extract everything within.\n9. Reserve indefinitely in the fridge until needed."
  },
  {
  component: "Aroma Oil",
  name: "",
  description: "This is a pretty bare bones oil... but I mix it up by adding olive oil to the party at the end. You can add the olive oil on its own to the bottom of the bowl, we found that combining it made service in a restaurant setting easier.\nThe oil aspect is where the truffle comes in. I add a small amount of truffle oil with this oil to the bottom of the bowl. Buy the best truffle oil you can, ideally only made from oil and truffle. I like Urbani. If it says “truffle flavoring,” it’s probably fake and terrible. You’ll add the truffle oil separately, see “assembly” for details.",
  ingredients: "1/2 cup chicken fat (feel free to use the fat from the soup making process here!)\n2 bunches of green onion, sliced into 2 inch pieces\n1/2 cup olive oil",
  directions: "1. Combine the chicken fat and green onion in a sauce pan.\n2. Heat on medium heat, stirring occasionally, until the green onion begins to brown and the oil has taken on its aroma, around 10-15 minutes\n3. Strain, pressing on the solids to extract as much oil as possible\n4. Add the olive oil, stirring to combine\n\nStore in the fridge indefinitely."
  },
  {
  component: "Topping",
  name: "Mushroom Powder",
  description: "This is dead simple but I felt really amplified the porcini and earthy flavors in the dish. You add this with the tare to the bottom of the bowl",
  ingredients: "4 parts by weight dried porcini\n1 part by weight dried shiitake",
  directions: "1. Add mushrooms to a spice mill, grind to a fine powder. Store in a seal container, use as needed."
  },
  {
  component: "Noodles",
  name: "",
  description: "At Ramen Lab, we used a special noodle with a particular blend of flours that resulted in a unique slippery texture. My hypothesis is that the flour contains a high level of amylose, which results in a slippery quality to some starch pastes. Sources of this could also be rice flour, but I’ve yet to experiment with it.\nAt home, I really like this bowl with a Tokyo straight noodle with some whole wheat added. Lately I’ve been getting super into using local wheat in my ramen noodles, so this is sort of an… Illinois straight?",
  ingredients: "93 g King Arthur Bread Flour\n6 g Whole Wheat flour\n1 g Vital Wheat Gluten\n1 g Egg White Powder\n38 g Water\n1.2 g Kansui powder (60% Potassium, 40% Sodium). You can also use baked soda, though the noodle wont be as firm\n1 g salt",
  directions: "1.Add kansui powder and salt to the water, dissolve completely. If using both Sodium Carbonate and Potassium Carbonate, add them one at a time. Go slowly, stir constantly until clear. This will take a while, but eventually the contents will dissolve. You can do this days in advance to get a jumpstart, just hold the liquid in an airtight container.\n2. In a standing mixer with a paddle attachment, add your flours, wheat gluten, and egg white powder, Turn the mixer to “stir” and run for 30 seconds to aerate the mix.\n3. While running the mixer on stir, add two thirds of your water mixture slowly, in an even stream. Let the mixer stir the flour and water mixture for 3 minutes.\n4. Add in the remaining water mixture with the mixer running, run for another minute, until small clumps begin to form.\n5. Turn off the mixer and add the mixture to a ziplock style bag. Close, and let this rest for 1-2 hours at room temperature. Don’t skip this.\n6. Knead it, buy using an electric pasta machine to sheet the dough, going through the largest setting, then the 2nd, then the 3rd. Take the dough and fold it, sheeting under the 2nd widest setting, then fold it again and sheet it under the widest setting. Repeat this again, until the sheet is quite smooth and not ragged.\n7. After kneading, put the dough back in the plastic bag, and rest at room temp for another 30 minutes.\n8. Pull out your dough. Portion into workable sizes and roll out to desired thickness with the pasta machine, using potato or cornstarch as you go to prevent sticking. I roll these to about 1.5mm\n9. Cut your noodles to your desired thickness. Given the above, I use a 1.5mm cutter, standard with a Marcato Atlas.\n10. Bundle the noodles into 135g portions, and place them, in the ziploc bag, in the fridge and allow to rest for at least a day."
  },
  {
  component: "Topping",
  name: "Chashu",
  description: "The chashu is pretty much same as every other braised chashu I’ve made. The only changes being: I do add some garlic to the party, I do it on the stove instead of in an oven, and I torch the chashu, searing is also delicious. That recipe is below. Scale as needed.\nFolks loved this chashu. At Akahoshi I routinely get told this is “the best chashu ever.” It’s melty and luscious but also not complexly flavored, so it works with any type of ramen. Again, it’s the saaaaame recipe I’ve always used really.",
  ingredients: "2 to 3-pound slab of pork belly, skin removed\nSalt and pepper\n1/2 cup soy sauce\n1/4 cup mirin\n1 cup water\n1 Tbsp. brown sugar\n1/4 cup sake\n8 cloves garlic (or other aromatics you like, such as ginger, green onion, white onions)",
  directions: "1. Depending on the thickness of your pork, you may want to roll it. Generally I roll the belly if it’s less than 2-inches thick, aiming for a full roll around three inches in diameter. Simply curl the belly around itself, and wrap butchers twine to hold it in shape. Don’t worry too much about how beautifully you tie it up, just make sure it’s wrapped nice and tightly.\n2. In a saucepan, Dutch oven, or other lidded pot just barely big enough to hold your pork belly, sear the pork belly on all sides, over medium-high heat, around three minutes a side, turning to ensure even browning.\n3. While the pork cooks, combine the soy sauce, mirin, water, and brown sugar in a bowl.\n4. Once browned, remove the pork, set aside. Wipe the pan with a paper towel to clean out any residual fat that may have rendered out. You could also reserve this fat if you prefer, it’s lard, and delicious. But you’ll probably need to wipe down the pan for the next step.\n5. Deglaze the pan with the sake. If you didn’t wipe down the pan, expect a grease fire, as the fat billows into the air as a cloud of small droplets of fat that is prone to exploding into a fire ball. So wipe down the pan before this step.\n6. Add the soy mixture, garlic, and pork, and bring to a simmer. Don’t worry if the pork isn’t fully covered, the steam will help cook the belly.\n7. Once bubbling, reduce the heat to low, cover the pot, and allow the pork to simmer until tender, around 2 1/2 hours, turning it occasionally to ensure the belly is covered by the braising liquid. I check the belly at around the 2:15 mark for doneness, prodding the pork to feel its texture. The fat on the outside should be very tender and yielding.\n8. Remove the pot from heat, allow the pork to cool in the liquid for one hour, before transferring to a container with the braising liquid and chilling in the fridge overnight."
  },
  {
  component: "Topping",
  name: "Egg",
  description: "We also had an egg on the menu which folks loved. I still do the equilibrium brine egg I designed ages ago, but to be honest, I’m not sure it’s necessary. Really the main finding of the equilibrium brine egg wasn’t the equilibrium brine itself, but that you should substantially reduce the salt and seasoning component of your brine to allow the egg to gently brine, rather than give it a thicker, more intense ring of seasoned egg white that you need to monitor. The equilibrium brine process is great at home though, reduces waste and gives a really consistent product.",
  ingredients: "1. Eggs\n2. Water\n3. Soy Sauce\n4. Mirin",
  directions: "1. Bring a pot of water to boil\n2. When the water is boiling, remove the eggs from the fridge, and prick a small hole on the bottom of each egg with a thumbtack. You can also use the heel of your knife to make an indentation there, by gently tapping it repeatedly.\n3. Add your eggs to the water, cook 7 minutes at full boil. Be sure to only add enough eggs that the water doesn’t lose temp too quickly. Do this in batches if necessary.\n4. While the eggs cook, prepare an ice bath.\n5. When the 7 minutes are up, remove the eggs and quickly place them in the ice bath to chill for at least 15 minutes\n6. Peel your eggs. There’s loads of tricks here, I like to crack the exterior all over by gently tapping the eggs on a surface, then peeling from the bottom. Some folks soak in vinegar, some like to do this all under running water.\n7. In a container, weigh out your peeled eggs and the weight of water to cover them. To this container, add 13% of this weight in soy sauce, and 10% this weight in mirin. So, as an example if my eggs and water covering them weighed 500 g, I’d add 65g soy sauce, and 50 g mirin.\n8. Store in the fridge for at least 24 hours, but up to 3 days with no degradation in quality."
  },
  {
  component: "",
  name: "",
  description: "",
  ingredients: "",
  directions: ""
  },
])
puts "Seeding Finished."

puts "Seeding the ramen recipe DB"

puts "Seeding Finished."

puts "Creating skills seeds."

