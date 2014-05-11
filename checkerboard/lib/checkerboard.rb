class Checkerboard

  def initialize(size)
  end

  def to_s
    rows = []


    2.times {|y|

      row = []

      2.times {|x|
        if y == 0
          if x == y
            row << "B"
          else
            row << "W"
          end
        else
          if x == y
            row << "B"
          else
            row << "W"
          end
        end
      }
      rows << row
    }
    rows.map {|row| row.join(" ") + "\n"}.join
  end

end