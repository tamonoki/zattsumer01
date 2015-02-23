class MyTest
	@queue = :queue_mytest		#queue name
	  
	def self.perform(text)
		#path = File.expand_path("log/users.log", Rails.root)
		#File.open(path, 'a') do |f|
		#	f.puts "User: #{name}"
		#end
		#
		sleep 3
		path = File.expand_path("log/echo.log", Rails.root)
		File.open(path, 'a') do |f|
			f.puts "Hello #{text}!"
		end
		puts "in Mytest: #{text}"

		path = File.expand_path("app/assets/pythons/fileCopy.py", Rails.root)
		puts(path)
		str_exec = "exec python '" + path + "'"
		system(str_exec)
	end
end
