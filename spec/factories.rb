require 'faker'

FactoryBot.define do
  factory :quote do
    quote = Quote.create!
    author Faker::Book.author
    content Faker::ChuckNorris.fact
  end
end
