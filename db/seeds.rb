# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Create Users
star_wars = User.create(email: 'starwars@mail.com', username: 'star_wars', role: 'admin',
                   password: 'test@123', password_confirmation: 'test@123')

tony = User.create(email: 'tony@mail.com', username: 'tony', role: 'developer', 
                   password: 'test@123', password_confirmation: 'test@123')

stark = User.create(email: 'stark@mail.com', username: 'stark', role: 'developer',
                   password: 'test@123', password_confirmation: 'test@123')

spark = User.create(email: 'spark@mail.com', username: 'spark', role: 'developer',
                    password: 'test@123', password_confirmation: 'test@123')

#Create Projects
m_jira = Project.create(owner_id: star_wars.id, name: 'M-JIRA', description: 'Mini Jira 
                    for project management', status: 'active')

m_jira_v2 = Project.create(owner_id: star_wars.id, name: 'M-JIRA-V2', description: 'Mini Jira 
                    for project management version 2', status: 'active')


#Create todo for project
login_todo = Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: nil, 
                    title: 'Create Login Page', description: 'We need to create login page with 
                    email and password', due_date: Time.now + 1.month, status: 'todo')

home_todo = Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: tony.id, 
                        title: 'Design home Page', description: 'Create a for home page', 
                        due_date: Time.now + 1.month, status: 'in_progress')

dev_list_todo = Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: spark.id, 
                          title: 'Display developers', description: 'Display list of developers
                          in the page', due_date: Time.now + 1.month, status: 'done')

project_todo = Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: spark.id, 
                      title: 'Projects display to admin', description: 'login developers
                      page', due_date: Time.now + 1.month, status: 'done')


