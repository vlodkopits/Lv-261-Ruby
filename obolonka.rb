require './abramove.rb'
require 'json'
include Abramove

class Obolonka
  def get_json
    file = open('tasks.json').read
    parsed = JSON.parse(file)["tasks"]
  end

	def get_tasks_desc  
	  get_json.each do |task| 
	    puts "#{task['id']}. #{task['desc']}" 
	  end
	end

	def get_task_id(id)	  
	  task_id = []

	  get_json.each do |task| 
	    task_id << task['id'] if task['id'].to_i == id
	  end

	  task_id.first
	end

	def get_task_method(id) 
	  task_method = []

	  get_json.each do |task| 
	    task_method << task['method'] if task['id'].to_i == id
	  end

	  task_method.first
	end

	def start
		get_tasks_desc		

		print 'Input task number:'
		n = gets.to_i
		task_id = get_task_id(n)


		if n == task_id
			send(get_task_method(n))
		else
			print "Wrong task number!"
		end
		print 'Another task? y/n: '
    gets.chomp == 'y' ? start : return
	end
end

run = Obolonka.new
run.start

