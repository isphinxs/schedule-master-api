# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

WEEKDAYS = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

def generate_days(month, year, initial_day, length)
    counter = 1
    weekday = initial_day
    length.times do 
        Day.create({
            day: counter,
            month: month,
            year: year,
            weekday: weekday
        })
        counter += 1
        if weekday == "Sunday"
            weekday = "Monday"
        else
            initial_weekday = WEEKDAYS.index(weekday)
            weekday = WEEKDAYS[initial_weekday + 1]
        end
    end  
end

# generate_days(7, 2021, "Thursday", 31)
# generate_days(8, 2021, "Sunday", 31)
# generate_days(9, 2021, "Wednesday", 30)