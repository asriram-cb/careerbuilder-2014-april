gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/emoji'
require 'minitest/pride'
require 'pry'
require_relative '../lib/house'

class HouseTest < Minitest::Test
  attr_reader :tale, :random_tale
  def setup
    @tale = House.new
    @random_tale = House.new(RandomPhrasing.new)
  end

  def test_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, tale.line(1)
  end

  def test_line_2
    expected = "This is the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(2)
  end

  def test_line_3
    expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(3)
  end

  def test_line_4
    expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(4)
  end

  def test_line_5
    expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(5)
  end

  def test_line_6
    expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(6)
  end

  def test_line_7
    expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(7)
  end

  def test_line_8
    expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(8)
  end

  def test_line_9
    expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(9)
  end

  def test_line_10
    expected = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(10)
  end

  def test_line_11
    expected = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(11)
  end

  def test_line_12
    expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, tale.line(12)
  end

  def test_all_the_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, tale.recite
  end

  def test_random_end
    expected = "the house that Jack built.\n"
    assert_equal expected, random_tale.line(5).split(//).last(expected.length).join
  end

  def test_random_start
    expected = "This is"
    assert_equal expected, random_tale.line(5).split(//).first(expected.length).join
  end

  def test_random_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, random_tale.line(1)
  end

  def test_random_12
    nouns.zip(verbs).flatten.each { |seg| assert random_tale.line(12).include?(seg) }
  end

  def test_random_2
    test_random(2)
  end

  def test_random_3
    test_random(3)
  end

  def test_random_4
    test_random(4)
  end

  def test_random_5
    test_random(5)
  end

  def test_random_6
    test_random(6)
  end

  def test_random_7
    test_random(7)
  end

  def test_random_8
    test_random(8)
  end

  def test_random_9
    test_random(9)
  end

  def test_random_10
    test_random(10)
  end

  def test_random_11
    test_random(11)
  end

  # def test_hearts
  #   5.times do |i|
  #     assert_equal 100, 100
  #   end
  # end    

  # def test_poops
  #   2.times do |i|
  #     assert_equal i, i + 1
  #   end
  # end

  # def test_skips
  #   skip "don't care!"
  # end

  # def test_errors
  #   raise "ruh roh"
  # end

  private

  def test_random(num)
    test = random_tale.line(num).split(/This is /)[1].split(/.\n/)[0]
    contained_nouns = nouns.select { |n| test != test.split(/#{n}/).join }
    contained_verbs = verbs.select { |v| test != test.split(/#{v}/).join }
    assert_equal contained_verbs.length, num
    assert_equal contained_verbs.length, contained_nouns.length
  end

  def nouns
    [ "the horse and the hound and the horn that",
    "the farmer sowing his corn that",
    "the rooster that crowed in the morn that",
    "the priest all shaven and shorn that",
    "the man all tattered and torn that",
    "the maiden all forlorn that",
    "the cow with the crumpled horn that",
    "the dog that",
    "the cat that",
    "the rat that",
    "the malt that",
    "the house that"]
  end

  def verbs
    [ "belonged to", "kept", "woke", "married", "kissed", "milked", "tossed", "worried", "killed", "ate", "lay in", "Jack built" ]
  end

  def segments
    [ "the horse and the hound and the horn that belonged to",
      "the farmer sowing his corn that kept",
      "the rooster that crowed in the morn that woke",
      "the priest all shaven and shorn that married",
      "the man all tattered and torn that kissed",
      "the maiden all forlorn that milked",
      "the cow with the crumpled horn that tossed",
      "the dog that worried",
      "the cat that killed",
      "the rat that ate",
      "the malt that lay in",
      "the house that Jack built"]
  end
end
