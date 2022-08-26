class User
  attr_accessor :name

  def initialize(name)
    puts "User#initialize called"
    @name = name
  end

  def log_in
    @logged_in = true
  end
end


class Student < User
  attr_accessor :grade

  def initialize(name, grade)
    puts "Student#initialize called"
    # NOTE: Here we are using super() so that we can call the 'User#initialize' method from the parent class:
    super(name)
    @grade = grade
  end

  def log_in
    puts "Student#log_in called"
    super
    @in_class = true
  end
end

oneil = Student.new("O'neil", 10)
oneil.log_in()
