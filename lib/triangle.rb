class Triangle
  define_method(:initialize) do |base, side_one, side_two|
    @base = base
    @side_one = side_one
    @side_two = side_two
  end

  define_method(:triangle?) do
    if @base.+(@side_one) >= @side_two && @base.+(@side_two) >= @side_one && @side_one.+(@side_two) >= @base
      true
    else
      false
    end
  end

  define_method(:triangle_type) do
    if triangle? == true
      if @base == @side_one && @side_two == @base
        "equilateral"
      elsif @base == @side_one || @side_two == @base
        "isosceles"
      elsif @base != @side_one && @side_two != @base && @side_one != @side_two
        "scalene"
      end
    else
      "error"
    end
  end
end
