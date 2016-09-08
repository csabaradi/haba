namespace :demo do
  desc "Prints Hello World"
  task :hello do
    puts "Hello World"
  end
  
  task :hellohiera do
    desc "Prints a hiera message"
    puts "Hello " + hiera("hiera_message")
  end


  task :hostname do
    run("hostname", {:hosts => hiera("servers")})
  end
end
