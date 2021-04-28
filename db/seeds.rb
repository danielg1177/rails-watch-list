require 'open-uri'
require 'json'

puts "starting seed"
url = "http://tmdb.lewagon.com/movie/top_rated"
JSON.parse(open(url).read)['results'].each do |result|
  Movie.create!(title: "#{result['original_title']}", overview: "#{result['overview']}", poster_url: "https://image.tmdb.org/t/p/original#{result['poster_path']}")
end
puts "finished seeding"
