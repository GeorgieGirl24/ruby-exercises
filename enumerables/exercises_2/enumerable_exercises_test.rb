require 'minitest/autorun'
require 'minitest/pride'

class EnumerablesTest < Minitest::Test
  def test_squares
    numbers = [1, 2, 3, 4, 5]
    actual = numbers.map do |number|
      number ** 2
    end
    assert_equal [1, 4, 9, 16, 25], actual
  end

  def test_find_waldo
    # skip
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    actual = words.find do |word|
      word == "waldo"
    end
    assert_equal "waldo", actual
  end

  def test_pick_words_with_three_letters
    # skip
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    actual = words.select do |word|
      word.length == 3
    end
    assert_equal ["bad", "cat", "dog", "red"], actual
  end

  def test_normalize_zip_codes
    # skip
    numbers = [234, 10, 9119, 38881]
    actual = numbers.map do |number|
      number.to_s.rjust(5, '0')
    end
    assert_equal ["00234", "00010", "09119", "38881"], actual
  end

  def test_no_waldo
    # skip
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = words.find do |word|
      word == "waldo"
    end
    assert_nil found
  end

  def test_pick_floats
    # skip
    numbers = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    actual = numbers.reject do |number|
      !(number.is_a?(Float))
    end
    assert_equal [1.4, 3.5, 4.9, 9.1, 8.0], actual
  end

  def test_words_with_no_vowels
    # skip
    words = ["green", "sheep", "travel", "least", "boat"]
    actual = words.map do |word|
      word.delete("aeiou")
    end
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], actual
  end

  def test_has_at_least_one_zero
    # skip
    numbers = [2, 0, 9, 3, 0, 1]
    actual = numbers.any? do |number|
      number.zero?
    end
    assert_equal true, actual
  end

  def test_all_gone
    # skip
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    actual = words.all? do |word|
      word == 'gone'
    end
    assert_equal true, actual
  end

  def test_count_numbers_greater_than_17
    # skip
    numbers = [9, 18, 12, 17, 1, 3, 99]
    actual = numbers.count do |number|
      number > 17
    end
    assert_equal 2, actual
  end

  def test_array_with_the_most_items
    # skip
    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]

    actual = arrays.max_by do |element|
      element.count
    end
    assert_equal [1, 2, 3, 4, 5], actual
  end

  def test_group_words_by_first_letter
    # skip
    words = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
    actual = words.group_by do |word|
      word[0]
    end
    expected = {"a"=>["ant", "axis", "albatross"], "b"=>["bolt", "badge", "butter"], "c"=>["car", "cdr", "column"]}
    assert_equal expected, actual
  end

  def test_none_are_negative
    # skip
    numbers = [9, 3, 1, 8, 3, 3, 5]
    actual = numbers.none? do |number|
      number < 0
    end
    assert true, actual
  end

  def test_one_time
    # skip
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    actual = words.one? do |word|
      word == 'time'
    end
    assert_equal true, actual
  end

  def test_sum_a_list_of_numbers
    # skip
    numbers = [32, 1, 21, 5, 81, 333]
    # initial value is 0
    actual = numbers.reduce(0) do |sum, number|
      sum += number
    end
    assert_equal 473, actual
  end

  def test_remove_numbers_divisible_by_3
    # skip
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    actual = numbers.reject do |number|
      number % 3 == 0
    end
    assert_equal [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20], actual
  end

  def test_sort_alphabetically
    # skip
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    actual = words.sort_by do |word|
      word.downcase
    end
    assert_equal ["Bacon", "broccoli", "candy", "Carrots", "FISH"], actual
  end

  def test_speed_interview_pairs
    # skip
    list1 = ["Alice", "Bob", "Charlie"]
    list2 = ["Xenia", "Yves", "Zach"]
    actual = list1.zip(list2)
    assert_equal [["Alice", "Xenia"], ["Bob", "Yves"], ["Charlie", "Zach"]], actual
  end

  def test_all_4_letter_words
    # skip
    words = ["love", "hate", "fire", "bird", "call"]
    actual = words.all? do |word|
      word.length == 4
    end
    assert_equal true, actual
  end

  def test_has_a_multi_word_phrase
    # skip
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    actual = phrases.any? do |phrase|
      phrase.split.length > 1
    end
    assert_equal true, actual
  end

  def test_count_words_that_are_uppercase
    # skip
    words = ["trousers", "SOCKS", "sweater", "Cap", "SHOE", "TIE"]
    actual = words.count do |word|
      word == word.upcase
    end
    assert_equal 3, actual
  end

  def test_smallest_number
    # skip
    numbers = [1, 10, 100, 1000, 10000, 1000000]

    actual = numbers.min_by do |number|
      number
    end
    assert_equal 1, actual
  end

  def test_most_programmers
    # skip
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}

    actual = programmers.max_by do |program_name, name|
      program_name
    end
    assert_equal :ruby, actual.first
  end

  def test_group_words_by_uniqueness
    # skip
    words = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
    actual = words.group_by do |word|
      word.downcase
    end
    expected = {"one"=>["one", "one", "one"], "two"=>["two", "TWO"], "three"=>["three", "three", "three", "three"]}
    assert_equal expected, actual
  end

  def test_none_are_broken
    # skip
    things = ["functional", "working", "works", "fixed", "good"]
    actual = things.none? do |thing|
      thing == "broken"
    end
    assert actual
  end

  def test_one_time
    # skip
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    actual = words.one? do |word|
      word == "time"
    end
    assert actual
  end

  def test_multiply_list_of_numbers
    # skip
    numbers = [2, 3, 5, 7]
    # initial value is 1
    actual = numbers.reduce(1) do |quotient, number|
      quotient *= number
    end
    assert_equal 210, actual
  end

  def test_remove_words_with_more_than_three_letters
    # skip
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    actual = words.reject do |word|
      word.length > 3
    end
    assert_equal ["bad", "cat", "dog", "red"], actual
  end

  def test_pick_dinosaurs
    # skip
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    actual = animals.select do |animal|
      animal.include?("saurus")
    end
    assert_equal ["tyrannosaurus", "achillesaurus", "qingxiusaurus"], actual
  end

  def test_sort_by_distance
    # skip
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    actual = distances.sort_by do |distance|
      distance.delete('cm').rjust(2, '0')
    end
    assert_equal ["1cm", "2cm", "4cm", "9cm", "30cm"], actual
  end

  def test_solitaire
    # skip
    list1 = ["Ace", "6", "10", "Queen"]
    list2 = [:clubs, :diamonds, :hearts, :spades]
    actual = list1.zip(list2)
    assert_equal [["Ace", :clubs], ["6", :diamonds], ["10", :hearts], ["Queen", :spades]], actual
  end

  def test_all_multiples_of_7
    # skip
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    actual = numbers.all? do |number|
      number % 7 == 0
    end
    assert actual
  end

  def test_sort_by_number_of_cents
    # skip
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    actual = prices.sort_by do |price|
      price.divmod(1)[1]
    end
    assert_equal [11.0, 10.01, 3.02, 7.9, 9.91], actual
  end

  def test_remove_dinosaurs
    # skip
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    notasaurus = animals.reject do |animal|
      animal.include?("saurus")
    end
    assert_equal ["narwhal", "eel"], notasaurus
  end

  def test_remove_hashes
    # skip
    elements = ["cat", {:dog=>"fido"}, 23, {:stuff=>"things"}, "aimless", 43]
    actual = elements.reject do |element|
      element.is_a?(Hash)
    end
    assert_equal ["cat", 23, "aimless", 43], actual
  end

  def test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
    # skip
    keywords = ["fish", "blue"]
    # initial value is 'one fish two fish red fish blue fish'
    actual = keywords.reduce('one fish two fish red fish blue fish') do |memory, word|
      memory = memory.gsub(word, word.upcase)
    end
    assert_equal 'one FISH two FISH red FISH BLUE FISH', actual
  end

  def test_subtract_smallest_values_from_100
    # skip
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
    # initial value is 100
    actual = elements.reduce(100) do |memory, element|
      memory -= element.min
    end
    assert_equal 88, actual
  end

  def test_one_double_digit_number
    # skip
    numbers = [8, 2, 10, 333, 9, 101]
    actual = numbers.one? do |number|
      number.digits.count == 2
    end
    assert actual
  end

  def test_group_by_number_of_zeros
    # skip
    numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
    actual = numbers.group_by do |number|
      count_zero = number.digits.count do |digit|
        digit == 0
      end
    end
    expected = {0=>[1, 3], 2=>[500, 200], 3=>[4000, 3000], 4=>[10000], 1=>[90, 20], 5=>[500000]}
    assert_equal expected, actual
  end

  def test_count_round_prices
    # skip
    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    actual = prices.count do |price|
      price % 1 == 0
    end
    assert_equal 2, actual
  end

  def test_no_monkeys
    # skip
    animals = ["elephant", "hippo", "jaguar", "python"]
    actual = animals.one? do |animal|
      animal == "monkeys"
    end
    refute actual
  end
end
