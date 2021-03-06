require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'
require './controllers/MenuController'
require './controllers/OrderController'
require './controllers/OwnerController'

require './models/ItemModel'
require './models/OrderModel'
require './models/UserModel'
require './models/TotalModel'

map('/') {run ApplicationController}
map('/home') {run HomeController}
map('/menu') {run MenuController}
map('/check_out') {run OrderController}