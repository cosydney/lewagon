require_relative "freelance"

emp1 = FreelanceEmployee.new("david@lewagon.pt", "David", "pass")
emp1.add_skills(["Ruby", "Rails"])

emp2 = FreelanceEmployee.new("carlos@lewagon.pt", "Carlos", "pass")
emp2.add_skills(["Ruby", "Rails", "Bash", "Flash"])

emp3 = FreelanceEmployee.new("shannon@lewagon.pt", "Shannon", "pass")
emp3.add_skills(["Ruby", "Rails", "Cobol", "Flash", "Java", "PHP", "Javascript"])

employees = [emp1, emp2, emp3]
puts employees.sort.reverse