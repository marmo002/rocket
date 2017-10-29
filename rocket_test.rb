require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    @rocket = Rocket.new
  end

  def test_name_reader
    @rocket = Rocket.new(name: "Marcelo")
    result = @rocket.name
    expected = "Marcelo"
    assert_equal(result, expected)
  end

    def test_name_setter
      @rocket.name = "Cesar55"
      result = @rocket.name
      expected = "Cesar55"
      assert_equal(result, expected)
    end

    def test_name_setter_edge
      @rocket.name = 5555
      result = @rocket.name
      expected = 5555
      assert_equal(result, expected)
    end


  def test_colour_reader
    @rocket = Rocket.new( colour: "Yelow" )
    result = @rocket.colour
    expected = "Yelow"
    assert_equal(result, expected)
  end

    def test_colour_setter
      @rocket.colour = "Azul"
      result = @rocket.colour
      expected = "Azul"
      assert_equal(result, expected)
    end

  def test_flying_setter
    @rocket = Rocket.new(flying: true)
    result = @rocket.flying?
    expected = true
    assert_equal(result, expected)
  end

    def test_flying_reader
      result = @rocket.flying?
      expected = false
      assert_equal(result, expected)
    end

  def test_lift_off_false
    @rocket = Rocket.new(flying: true)
    result = @rocket.lift_off
    expected = false
    assert_equal(result, expected)
  end

    def test_lift_off_true
      result = @rocket.lift_off
      expected = true
      assert_equal(result, expected)
    end

  def test_land_true
    @rocket = Rocket.new(flying: true)
    result = @rocket.land
    expected = true
    assert_equal(result, expected)
  end

    def test_land_false
      result = @rocket.land
      expected = false
      assert_equal(result, expected)
    end

  def test_status_flying
    @rocket = Rocket.new(flying: true)
    result = @rocket.status
    name = @rocket.name
    expected = "Rocket #{name} is flying through the sky!"
    assert_equal(result, expected)
  end

    def test_status_not_flying
      result = @rocket.status
      name = @rocket.name
      expected = "Rocket #{name} is ready for lift off!"
      assert_equal(result, expected)
    end

end
