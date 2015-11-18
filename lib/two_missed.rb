class TwoMissed
  def initialize(array)
    @array = array
  end

  def find
    @upper = @upper2 = @array.size
    @lower = @lower2 = 0

    [first_missed, second_missed]
  end

private

  def first_missed
    while (@upper > @lower) do
      index = @lower + (@upper - @lower) / 2
      comp = @array[index] - (index + 1)

      case comp
      when 0
        @lower = index + 1
        @lower2 = index + 1 if (index + 1) > @lower2
      when 1
        @upper = index
        @lower2 = index + 1 if (index + 1) > @lower2
      when 2
        @upper = @upper2 = index
      end
    end

    @upper + 1
  end

  def second_missed
    while (@upper2 > @lower2) do
      index = @lower2 + (@upper2 - @lower2) / 2
      comp = @array[index] - (index + 1)

      case comp
      when 1
        @lower2 = index + 1
      when 2
        @upper2 = index
      end
    end

    @upper2 + 2
  end
end