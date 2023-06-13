class Carnival
  attr_reader :duration,
              :rides
  def initialize(duration)
    @duration = duration
    @rides = []
  end

  def add_ride(ride)
    @rides.push(ride)
  end

  def most_popular_ride
    best_ride = @rides.first
    ride_count = @rides.first.rider_log.count

    @rides.each do |ride|
      if ride_count < ride.rider_log.count
        best_ride = ride
      end
    end
    best_ride
  end

  def total_revenue
    @rides.sum do |ride|
      ride.total_revenue
    end
  end


end