require_relative 'babysitter'
require 'test/unit'


class BabySitterTest < Test::Unit::TestCase

  def test_start_time_before_5pm
    result = calculatePay(16, 10)
    assert_equal("start time must not be before 5pm or after 3am", result)
  end

  def test_start_time_after_3am
    result = calculatePay(4, 10)
    assert_equal("start time must not be before 5pm or after 3am", result)
  end

  def test_start_is_correct
    result = calculatePay(18, 18)
    assert_equal(nil, result)
  end

  def test_end_time_before_6pm
    result = calculatePay(17, 5)
    assert_equal("end time must not be before 6pm", result)
  end

end
