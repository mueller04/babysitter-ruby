require_relative 'babysitter'
require 'test/unit'


class BabySitterTest < Test::Unit::TestCase

  def test_start_time_before_5pm
    s = calculatePay(16)
    assert_equal("start time must not be before 5pm or after 3am", s)
  end

  def test_start_time_after_3am
    s = calculatePay(4)
    assert_equal("start time must not be before 5pm or after 3am", s)
  end

end
