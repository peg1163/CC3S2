require 'sinatra'
class User
  attr_reader :id
  attr_accessor :todo

  def initialize
    @id = app.get_new_user_id
    @todo = Todo.new
  end
end

class Todo
  def initialize
    @items = Array.new
  end

  def add item
    if not @items.include? item
      @items << item
    end
  end

  def delete item
    @items.delete item
  end

  def view_item item_id
    # debes suponer que cada instancia de elemento tiene un campo ID accesible
    #  y que todos los elementos/id's son unicos
    item = @items.find { |item| item.id == item_id }
    format_as_json item unless item.nil?
  end
end

get '/user/:id/todo' do
  user = get_user_by_id params[:id]
  user.todo.to_json
end
get '/user/:id/todo/:item_id' do
  user = get_user_by_id params[:id]
  todo = user.todo
  todo.view_item params[:item_id]
end
post '/user/:id/todo' do
  user = get_user_by_id params[:id]
  request.body.rewind
  raw_item = JSON.parse request.body.read
  user.todo.add raw_item
  201 # Resource created.
end
delete '/user/:id/todo/:item' do
  user = get_user_by_id params[:id]
  user.todo.delete params[:item]
  200 # Resource delete ok. end 
end