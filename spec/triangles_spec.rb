require('rspec')
require('triangles')

describe(Triangle) do
  describe("#triangles?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(5, 15, 5)
      expect(test_triangle.is_it_a_triangle?()).to(eq(false))
    end
  end
end
