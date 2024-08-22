# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#

Task.create!([
  {title: "Finish Rails project",
  description: "Complete the Rails application for the client and submit it by the deadline.",
  due_date: "2024-09-01",
  priority: 1,
  status: "In Progress"},
  
  {title: "Write blog post",
  description: "Draft and publish a blog post on Ruby on Rails best practices.",
  due_date: "2024-08-30",
  priority: 2,
  status: "Not Started"},

  {title: "Update resume",
  description: "Revise and update resume with the latest job experiences and skills.",
  due_date: "2024-08-25",
  priority: 3,
  status: "Completed"},

  {title: "Plan team meeting",
  description: "Organize and schedule a team meeting to discuss the upcoming project milestones.",
  due_date: "2024-08-28",
  priority: 2,
  status: "In Progress"},

  {title: "Review pull requests",
  description: "Review and merge pending pull requests from the development team.",
  due_date: "2024-09-05",
  priority: 1,
  status: "Not Started"}
])
