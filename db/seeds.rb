
    20.times do |i|
      author =
      quote = Quote.create!(
        author: Faker::Book.author,
        content: Faker::ChuckNorris.fact
      )
      puts "Quote #{i}: Author is #{quote.author} and quotation is '#{quote.content}'."
    end
