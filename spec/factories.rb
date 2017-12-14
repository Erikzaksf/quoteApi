require 'faker'

FactoryBot.define do
  factory :user do
    name "MyString"
    email "MyString"
    password_digest "MyString"
  end
  factory :quote do
    quote = Quote.create!
    author Faker::Book.author
    content Faker::ChuckNorris.fact
  end
end
