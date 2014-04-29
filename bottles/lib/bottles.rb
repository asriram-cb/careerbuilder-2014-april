class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
    "#{quantity(num).capitalize} #{ewer(num)} of beer on the wall," + 
    " #{quantity(num)} #{ewer(num)} of beer.\n" + 
    "#{what_to_do(num)}," + 
    " #{quantity(num-1)} #{ewer(num-1)} of beer on the wall.\n"
  end
end

def what_to_do(n)
  if n == 0
    "Go to the store and buy some more"
  else
    "Take #{noun(n)} down and pass it around"
  end
end

def quantity(n)
  if n == -1
    99.to_s
  elsif n == 0
    "no more"
  else
    n.to_s
  end
end

def noun(n)
  if n == 1
    "it"
  else
    "one"
  end
end

def ewer(n)
  if n == 1
    "bottle"
  else
    "bottles"
  end
end

# first strategy: when 2 and else are the closest to each other, so it would require the smallest difference change. make two changes, first the 2/num, then the bottle/s

# next: collapse them now that they're identical, then propagate changes. collapsing has higher priority. keep going.

# at this point, the code is more complex than what we started with.