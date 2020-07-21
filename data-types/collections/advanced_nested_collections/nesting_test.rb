require './nesting'
require 'minitest/autorun'
require 'minitest/pride'

# The intent of this exercise is to practice working with nested collections.
# Some tests will be able to pass without any enumeration, and others will require
# more complex iteration over multiple portions of the nested collection.

# All tests can be completed without using any enumerable other than #each.
# My suggestion would be to complete all tests using only #each, and then
# to go back over each test and refactor it using a different enumerable.

# The collection you're going to be using lives in ./nesting.rb and is called stores.
# If you spot an error or want to make this exercise better, please let us know!

class NestedTest < MiniTest::Test

  def test_list_of_olive_garden_employess
    # skip
    #^^^ Un-Skip each test
    #=======================
    # EXAMPLE
    employees = stores[:olive_garden][:employees]
    #=======================
    assert_equal ["Jeff", "Zach", "Samantha"], employees
  end

  def test_pancake_ingredients
    # skip
    #=======================
    pancake_ingredients = stores[:dennys][:dishes][0][:ingredients]
    #=======================
    assert_equal ["Flour", "Eggs", "Milk", "Syrup"], pancake_ingredients
  end

  def test_rissotto_price
    # skip
    #=======================
    risotto_price = stores[:olive_garden][:dishes][0][:price]
    #=======================
    assert_equal 12, risotto_price
  end

  def test_big_mac_ingredients
    # skip
    #=======================
    big_mac_ingredients = stores[:macdonalds][:dishes][0][:ingredients]
    #=======================
    assert_equal ['Bun','Hamburger','Ketchup','pickles'], big_mac_ingredients
  end

  def test_list_of_restaurants
    # skip
    #=======================
    store_names = stores.keys
    #=======================
    assert_equal [:olive_garden, :dennys, :macdonalds], store_names
  end

  def test_list_of_dishes_names_for_olive_garden
    # skip
    #=======================
    dishes_names = []
    stores.each do |store|
      store.each do |detail|
        if detail.class == Symbol
          if detail.inspect == ":olive_garden"
            store.each do |info|
              if info.class == Hash
                dishes_names << info[:dishes][0][:name]
                dishes_names << info[:dishes][1][:name]
              end
            end
          end
        end
      end
    end
    #=======================
    assert_equal ['Risotto', 'Steak'], dishes_names
  end

  def test_list_of_employees_across_all_restaurants
    # skip
    #=======================
    employee_names = []
    stores.each do |store| #stores is a Hash/ store is an Array
      store.each do |detail| #detail is both Symbols and Hashes
        if detail.class == Hash
          detail[:employees].each do |employee| #employee is a String
            employee_names << employee
          end
        end
      end
    end
    #=======================
    assert_equal ["Jeff","Zach","Samantha","Bob","Sue","James","Alvin","Simon","Theodore"], employee_names
  end

  def test_list_of_all_ingredients_across_all_restaurants
    # skip
    #=======================
    ingredients = []
    stores.each do |store|
      store.each do |detail|
        if detail.class == Hash
          detail[:dishes].each do |dish|
            dish[:ingredients].each do |ingredient|
              ingredients << ingredient
            end
          end
        end
      end
    end
    #=======================
    assert_equal ["Rice",
                  "Cheese",
                  "Butter",
                  "Beef",
                  "Garlic",
                  "Flour",
                  "Eggs",
                  "Milk",
                  "Syrup",
                  "Flour",
                  "Eggs",
                  "Syrup",
                  "Bun",
                  "Hamburger",
                  "Ketchup",
                  "pickles",
                  "Potatoes",
                  "Salt"], ingredients
  end

  def test_full_menu_price_for_olive_garden
    # skip
    #=======================
    full_menu_price = 0
    stores.each do |store|
      store.each do |detail|
        if detail.class == Symbol
            # p detail #all the restaurants
            if detail.inspect == ":olive_garden"
              store.each do |info|
                if info.class == Hash
                  price_1 = info[:dishes][0][:price]
                  price_2 = info[:dishes][-1][:price]
                  total_price = price_1 + price_2
                  full_menu_price = total_price
                end
              end
            end
          end
      end
    end
    #=======================
    assert_equal 27, full_menu_price
  end

  def test_full_menu_for_olive_garden
    # skip
    #=======================
    olive_garden_menu ={}
    stores.each do |store|
      store.each do |detail|
        if detail.class == Symbol
            # p detail #all the restaurants
            if detail.inspect == ":olive_garden"
              store.each do |info|
                if info.class == Hash
                  menu_name_1 = info[:dishes][0][:name]
                  menu_1 = info[:dishes][0]
                  menu_name_2 = info[:dishes][1][:name]
                  menu_2 = info[:dishes][1]
                  olive_garden_menu[menu_name_1] = menu_1
                  olive_garden_menu[menu_name_2] = menu_2
                end
              end
            end
          end
      end
    end
    #=======================
    expected = ({"Risotto"=>{:name=>"Risotto", :ingredients=>["Rice", "Cheese", "Butter"], :price=>12},
                  "Steak"=>{:name=>"Steak", :ingredients=>["Beef", "Garlic"], :price=>15}})
    assert_equal expected, olive_garden_menu
  end

  def test_menu_accross_all_restaurants
     # skip
    #=======================
     full_menu = {}
     stores.each do |store|
       store.each do |detail|
         if detail.class == Symbol
             # p detail #all the restaurants
             if detail.inspect == ":olive_garden"
               store.each do |info|
                 if info.class == Hash
                   og_name_1 = info[:dishes][0][:name]
                   og_menu_1 = info[:dishes][0]
                   og_name_2 = info[:dishes][1][:name]
                   og_menu_2 = info[:dishes][1]
                   full_menu[og_name_1] = og_menu_1
                   full_menu[og_name_2] = og_menu_2
                 end
               end
            elsif detail.inspect == ":dennys"
              store.each do |info|
                if info.class == Hash
                  d_name_1 = info[:dishes][0][:name]
                  d_menu_1 = info[:dishes][0]
                  d_name_2 = info[:dishes][1][:name]
                  d_menu_2 = info[:dishes][1]
                  full_menu[d_name_1] = d_menu_1
                  full_menu[d_name_2] = d_menu_2
                end
              end
            elsif detail.inspect == ":macdonalds"
              store.each do |info|
                if info.class == Hash
                  md_name_1 = info[:dishes][0][:name]
                  md_menu_1 = info[:dishes][0]
                  md_name_2 = info[:dishes][1][:name]
                  md_menu_2 = info[:dishes][1]
                  full_menu[md_name_1] = md_menu_1
                  full_menu[md_name_2] = md_menu_2
                end
              end
            end
          end
       end
     end
    #=======================
    expected = ({"Risotto"=>
                      {:name=>"Risotto", :ingredients=>["Rice", "Cheese", "Butter"], :price=>12},
                "Steak"=>
                    {:name=>"Steak", :ingredients=>["Beef", "Garlic"], :price=>15},
                "Pancakes"=>
                     {:name=>"Pancakes",
                      :ingredients=>["Flour", "Eggs", "Milk", "Syrup"],
                      :price=>10},
                "Waffles"=>
                      {:name=>"Waffles", :ingredients=>["Flour", "Eggs", "Syrup"], :price=>7},
                "Big Mac"=>
                    {:name=>"Big Mac",
                    :ingredients=>["Bun", "Hamburger", "Ketchup", "pickles"],
                    :price=>5},
                "Fries"=>
                    {:name=>"Fries", :ingredients=>["Potatoes", "Salt"], :price=>2}
                  })
    assert_equal expected, full_menu
  end

end
