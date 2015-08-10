require('rspec')
require('triangles')

describe(Triangle) do

  describe("#triangles?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(5, 15, 5)
      expect(test_triangle.is_it_a_triangle?()).to(eq(false))
    end

    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(5, 8, 5)
      expect(test_triangle.is_it_a_triangle?()).to(eq(true))
    end
  end

  describe("#what_triangle") do
    it("returns equilateral if all sides are equal") do
      test_triangle = Triangle.new(5, 5, 5)
      expect(test_triangle.what_triangle()).to(eq("equilateral"))
    end

    it("returns isosceles if two sides are equal") do
      test_triangle = Triangle.new(5, 8, 5)
      expect(test_triangle.what_triangle()).to(eq("isosceles"))
    end
  end

end
