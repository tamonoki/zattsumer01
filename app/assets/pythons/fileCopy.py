#! /usr/bin

str = "test file by python on resque"
print(str)
f = open("/home/vagrant/zattsumer01/app/assets/pythons/test.txt", 'w')
f.write(str)
f.close()

