class Mylogger
	  @queue = :default
	  
	  def self.perform(name)
		  path = File.expand_path("log/users.log", Rails.root)
		  File.open(path, 'a') do |f|
			  f.puts "User: #{name}"
		  end
		  puts "in Mylogger"
	  end
end
