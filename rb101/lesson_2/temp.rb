
def monthly(year)
  year * 12.00
end

def payment_per_month(loan, duration)
  loan / monthly(duration)
end

puts payment_per_month(120, 1) == 10



