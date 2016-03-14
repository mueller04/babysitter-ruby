
class Babysitter

@@start_time_pay=12
@@bed_time=22

  def calculatePay(start_time, end_time)
    message = validateTime(start_time, end_time)
    if message == nil
      return @@start_time_pay * (@@bed_time - start_time)
    else
      return message
    end
  end

  def validateTime(start_time, end_time)
    if start_time < 17 && start_time > 3
      return "start time must not be before 5pm or after 3am"
    end
    if end_time < 18 && end_time > 4
      return "end time must not be before 6pm or after 4am"
    end
  end

end
