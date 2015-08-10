class Triangle
  define_method(:initialize) do |base, side_one, side_two|
    @base = base
    @side_one = side_one
    @side_two = side_two
  end

  define_method(:triangle?) do
    false
  end
end
