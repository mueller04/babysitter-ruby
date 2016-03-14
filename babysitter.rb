def calculatePay(start_time)
  validateTime(start_time)
end

def validateTime(start_time)
  if start_time < 5
    return "start time must not be before 5"
  end
end
