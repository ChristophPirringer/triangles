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
    triangle_type=""
    if sides[1] == sides[2] && sides[0] == sides[1]
      triangle_type.concat("equilateral")
    elsif sides[0]==sides[1] || sides[1]==sides[2] || sides[0]==sides[2]
      triangle_type.concat("isosceles")
    elsif sides[0]!=sides[1] || sides[1]!=sides[2] || sides[0]!=sides[2]
      triangle_type.concat("scalene")
    else
    end
    triangle_type
  end

end
