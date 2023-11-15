puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom",
          address: "7 Boundary St, London E2 7JE",
          category: "japanese",
          phone_number: "+44 3456789O567"
        }
pizza_east =  {name: "Pizza East",
              address: "56A Shoreditch East St, London E1 6PQ",
              category: "italian",
              phone_number: "+44 3456789O567"
            }
pizza_west =  {name: "Pizza West",
              address: "56A Shoreditch West St, London E1 7PQ",
              category: "italian",
              phone_number: "+44 3456789O567"
            }
pizza_south =  {name: "Pizza South",
              address: "56A Shoreditch South St, London E1 8PQ",
              category: "italian",
              phone_number: "+44 3456789O567"
            }
pizza_north=  {name: "Pizza North",
              address: "56A Shoreditch North St, London E1 9PQ",
              category: "italian",
              phone_number: "+44 3456789O567"
            }


[dishoom, pizza_east, pizza_west, pizza_south, pizza_north].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
