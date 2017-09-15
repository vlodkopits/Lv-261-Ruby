require './abramove.rb'
require 'json'

# simple graphic interface forAbramove tasks
class Obolonka
  include Abramove
  
  def getjson
    file = open('tasks.json').read
    JSON.parse(file)['tasks']
  end

  def gettasks_desc
    getjson.each do |task|
      puts "#{task['id']}. #{task['desc']}"
    end
  end

  def gettask_id(id)
    task_id = []

    getjson.each do |task|
      task_id << task['id'] if task['id'].to_i == id
    end

    task_id.first
  end

  def gettask_method(id)
    task_method = []

    getjson.each do |task|
      task_method << task['method'] if task['id'].to_i == id
    end

    task_method.first
  end

  def start
    gettasks_desc

    print 'Input task number:'
    n = gets.to_i
    task_id = gettask_id(n)

    if n == task_id
      arg = input_method
      send gettask_method(n) , arg
    else
      print 'Wrong task number!'
    end

    print 'Another task? y/n: '
    gets.chomp == 'y' ? start : return
  end
end

run = Obolonka.new
run.start
