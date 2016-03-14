require_relative 'babysitter'
require 'test/unit'


class BabySitterTest < Test::Unit::TestCase

  def test_hello
    s = calculatePay(4)
    assert_equal("start time must not be before 5", s)
  end
end
