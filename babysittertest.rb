require_relative 'babysitter'
require 'test/unit'

class BabySitterTest < Test::Unit::TestCase

  #babysitter = ::Babysitter.new

  def test_start_time_before_5pm
    babysitter = Babysitter.new
    result = babysitter.calculatePay(16, 10)
    assert_equal("start time must not be before 5pm or after 3am", result)
  end

  def test_start_time_after_3am
    babysitter = Babysitter.new
    result = babysitter.calculatePay(4, 10)
    assert_equal("start time must not be before 5pm or after 3am", result)
  end

  def test_start_is_correct
    babysitter = Babysitter.new
    result = babysitter.calculatePay(18, 18)
    assert_not_equal("start time must not be before 5pm or after 3am", result)
  end

  def test_end_time_before_6pm
    babysitter = Babysitter.new
    result = babysitter.calculatePay(17, 17)
    assert_equal("end time must not be before 6pm or after 4am", result)
  end

  def test_end_time_after_4am
    babysitter = Babysitter.new
    result = babysitter.calculatePay(17, 5)
    assert_equal("end time must not be before 6pm or after 4am", result)
  end

  def test_pay_12hr_start_to_bedtime
    babysitter = Babysitter.new
    result = babysitter.calculatePay(17, 22)
    assert_equal(60, result)
  end

  def test_pay_8hr_bedtime_to_midnight
    babysitter = Babysitter.new
    result = babysitter.calculatePay(22, 24)
    assert_equal(16, result)
  end



end
