# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


questions = YAML.load_file('questions.yml')

questions["strengths"].each do |question|
  Strength.create(description: question)
end

questions["weakness"].each do |question|
  Weakness.create(description: question)
end

User.create(email: 'kanth@ichange.com', password: '12345678')
