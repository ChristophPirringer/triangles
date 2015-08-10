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
    else
      true
    end
  end

  define_method(:what_triangle)do
    sides=[].push(@a).push(@b).push(@c).sort()
    if sides[1] == sides[2] && sides[0] == sides[1]
      "equilateral"
    else
      "somethingelse"
    end
  end

end
