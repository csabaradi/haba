namespace :demo do
  desc "Prints Hello World"
  task :hello do
    puts "Hello World"
  end
  
  task :hellohiera do
    puts "Hello " + hiera("hiera_message")
  end


  task :hostname do
    Rake::Task['demo:hello'].invoke
  end
end
