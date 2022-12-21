puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

10.times do 
    Freebie.create(
        item_name: Faker::Game.title, 
        value: rand(10..60),
        company_id: rand(1..4),
        dev_id: rand(1..4)
    )
end

puts "Seeding done!"
