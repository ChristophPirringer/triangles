require('sinatra')
require('pry')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @a = params.fetch("a").to_f()
  @b = params.fetch("b").to_f()
  @c = params.fetch("c").to_f()
  test_triangle = Triangle.new(@a, @b, @c)
  @triangle_type= test_triangle.what_triangle()
  erb(:result)
end
