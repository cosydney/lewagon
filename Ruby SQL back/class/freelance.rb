class WrongPasswordError < StandardError
end

class PasswordNotStrongError < StandardError
end

class FreelanceEmployee
  include Comparable

  attr_reader :name, :email
  attr_writer :email

  def initialize(email, name, password)
    @email = email
    @name = name
    @password = password
    @skills = []
  end

  def skills
    @skills.join(", ")
  end

  def to_s
    "Name: #{@name}\nEmail: #{@email}\nSkills (#{count_skills}): #{@skills.join(", ")}"
  end

  def add_skills(skills)
    @skills = @skills.concat(skills)
    return true
  end

  def change_password(old_password, new_password)
    fail PasswordNotStrongError, "Your password is not 8 characters long" if new_password.length < 8
    fail WrongPasswordError, "Your password does not match" if old_password != @password
    @password = new_password
    send_email
  end

  def <=>(other_employee)
    count_skills <=> other_employee.count_skills
  end

  def count_skills
    @skills.length
  end

  private

  def send_email
    puts "Your password has been changed..."
  end

end