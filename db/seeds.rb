password = 'pass123'

1.upto(3) do |i|
  User.create(
    username: "username#{i}",
    email: "user-#{i}@example.com",
    password: password,
  )
end

puts "Success Create User"