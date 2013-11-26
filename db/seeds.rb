Admin.destroy_all
Venue.destroy_all
Event.destroy_all

a = Admin.create(username: "Kingsley")
a2 = Admin.create(username: "Janice")

venues = Venue.create([
  { name: "Fringe Club" },
  { name: "West Kowloon Cultural Center" },
  { name: "HKAPA" },
  { name: "My house" }
])

a.events.create([
  {
    title: "Clockenflap 2013",
    venue: venues[1]
  },

  {
    title: "Blohk Party",
    venue: venues[1]
  }
])

a2.events.create([
  {
    title: "Pacqioa vs Rios",
    venue: venues[3]
  },

  {
    title: "SushiSumoSake Festival",
    venue: venues[0]
  }
])
