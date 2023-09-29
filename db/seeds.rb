# rails db:seed
User.delete_all if User.first.present?

password = 'pass123'

usernames = ['arya020595', 'rifai12345', 'miniso333', 'osakana343', 'yuyuho']
avatar_urls = [
  'https://i.pravatar.cc/400?img=70',
  'https://i.pravatar.cc/400?img=69',
  'https://i.pravatar.cc/400?img=68',
  'https://i.pravatar.cc/400?img=67',
  'https://i.pravatar.cc/400?img=66',
]

0.upto(5) do |i|
  User.create(
    username: usernames[i],
    avatar: avatar_urls[i],
    email: "#{usernames[i]}@example.com",
    password: password,
  )
end

puts "Success Create User"