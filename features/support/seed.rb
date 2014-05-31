Quote.create(content: 'hello world', author: 'some guy')
Quote.create(content: 'next quote', author: 'next guy')
Quote.create(content: 'last quote', author: 'last guy')

user = User.new(email: 'test@user.com')
user.password = 'password1'
user.password_confirmation = 'password1'
user.save
