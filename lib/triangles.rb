class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:is_it_a_triangle?)do
    sides=[].push(@a).push(@b).push(@c).sort()
    if sides[2].>= sides[0].+sides[1]
      false
    end
  end

end