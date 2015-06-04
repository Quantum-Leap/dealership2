class Vehicle
  @@vehicles = []
  attr_reader(:make,:model, :year)

  define_method(:initialize) do |make, model, year|
  @make = make
  @model = model
  @year = year
end

  define_singleton_method(:all) do
    @@vehicles
  end

  define_singleton_method(:save) do
    @@vehicles.push(self)

  end

  define_singleton_method(:clear) do
    @@vehicles = []

  end

  define_method(:age) do
    current_year = Time.new().year() #current year is created
    current_year.-(@year) #subtracts the given year from the current year
  end
end
