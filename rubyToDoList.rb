def Add(task, taskList)
    #task = gets.chomp
    puts "Task added: #{task}"
    taskList << task 
  end
  
  def View(taskList)
    i = 1
    puts "Current tasks:"
    for item in taskList
      puts "#{i}. #{item}"
      i += 1
    end
  end
  
  def MarkComplete(num, taskList, completedTasks)
    num = num.to_i
    completedTasks << taskList[num]
    taskList.delete_at(num)
    puts "Completed tasks:"
    for item in completedTasks
      puts "#{item}"
    end
  end
  
  def RemoveTask(num, taskList)
    num = num.to_i
    removed_item = taskList.delete_at(num)
    puts "Removed item #{removed_item}"
    puts "Remaining items: #{taskList.inspect}"
  end
  
  taskList = []
  completedTasks = []
  puts "Welcome to the Todo app"
  puts 
  puts ""
  puts "Commands:"
  puts "      add <task>     Add a task to the list"
  puts "      view           View the list of tasks"
  puts "      complete <num> Mark a task as completed"
  puts "      remove <num>   Remove a task from the list"
  puts "      exit           Exit the application"
  
  loop do
    puts "Which command would you like to run?"
    input = gets.chomp
  
    if input.include?("add")
      print "Which task would you like to add?: "
      task = gets.chomp
      Add(task, taskList)
    elsif input.include?("view")
      View(taskList)
    elsif input.include?("complete")
      puts "Enter id of task to mark as complete: "
      number = gets.chomp
      MarkComplete(number, taskList, completedTasks)
    elsif input.include?("remove")
      puts "Enter id of task to remove: "
      number = gets.chomp
      RemoveTask(number, taskList)
    elsif input.include?("exit")
      exit
    end
end