require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it('returns false if not a triangle') do
      test_triangle = Triangle.new(4,1,1)
      expect(test_triangle.triangle?()).to(eq(false))
    end

    it('returns true if it is a triangle') do
      test_triangle = Triangle.new(4,2,3)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end

  describe('#triangle_type') do
    it('returns equilateral if all sides of the triangle are equal') do
      test_triangle = Triangle.new(4,4,4)
      expect(test_triangle.triangle_type()).to(eq("equilateral"))
    end

    it('returns isosceles if two sides of the triangle are equal and the third side is not') do
      test_triangle = Triangle.new(4,4,2)
      expect(test_triangle.triangle_type()).to(eq("isosceles"))
    end

    it('returns scalene if all sides of the triangle are unequal') do
      test_triangle = Triangle.new(4,3,2)
      expect(test_triangle.triangle_type()).to(eq("scalene"))
    end
  end
end
