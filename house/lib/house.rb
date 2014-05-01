class House

  def recite
    1.upto(12).map {|i| line(i)}.join("\n")
  end

  def random_recite
    1.upto(11).map {|i| random_line(i)}.join("\n")
  end

  def random_line
    "This is %s %s.\n" % [random_lines, segments.last(1).join(" ")]
  end

  def line(num)
    "This is %s.\n" % segments.last(num).join(" ")
  end

  private

  def random_lines
    (0..random_segments.length-1).map {|i| segments[i]}.join(" ")
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

  def random_segments
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
      "the malt that lay in"]
  end
end