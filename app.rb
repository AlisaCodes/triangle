require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangle') do
  base = params.fetch('base').to_i()
  side_one = params.fetch('side_one').to_i()
  side_two = params.fetch('side_two').to_i()

  @triangle = Triangle.new(base, side_one, side_two).triangle_type()


  erb(:triangle)

end
