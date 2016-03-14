def calculatePay(start_time)
  validateTime(start_time)
end

def validateTime(start_time)
  if start_time < 17 || start_time > 3
    return "start time must not be before 5pm or after 3am"
  end
end
