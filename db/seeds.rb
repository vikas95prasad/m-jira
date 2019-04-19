# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Create Users
star_wars = User.create(email: 'starwars@mail.com', username: 'starwars', role: 'admin', password: 'test@123', password_confirmation: 'test@123')

tony = User.create(email: 'tony@mail.com', username: 'tony', role: 'developer', 
                   password: 'test@123', password_confirmation: 'test@123')

stark = User.create(email: 'stark@mail.com', username: 'stark', role: 'developer',
                   password: 'test@123', password_confirmation: 'test@123')

spark = User.create(email: 'spark@mail.com', username: 'spark', role: 'developer',
                    password: 'test@123', password_confirmation: 'test@123')

#Create Projects

m_jira = Project.create(owner_id: star_wars.id, name: 'M-JIRA', 
                        description: 'Mini Jira for project management', status: 'active', 
                        due_date: Time.now + 1.month)

Project.create(owner_id: star_wars.id, name: 'M-JIRA-V1', 
                           description: 'Mini Jira for project management version 1', 
                           status: 'complete', due_date: Time.now + 1.month)

Project.create(owner_id: star_wars.id, name: 'M-JIRA-V2', 
                           description: 'Mini Jira for project management version 2', 
                           status: 'active', due_date: Time.now + 1.month)

Project.create(owner_id: star_wars.id, name: 'M-JIRA-V3', 
                           description: 'Mini Jira for project management version 3', 
                           status: 'active', due_date: Time.now + 1.month)


#Create todo for project
Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: stark.id, 
            title: 'Analysis Login Page', 
            description: 'Analysis of login page', 
            due_date: Time.now + 1.month, status: 'todo')

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: stark.id, 
            title: 'Create Login Page', 
            description: 'We need to create login page with email and password', 
            due_date: Time.now + 1.month, status: 'todo')

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: stark.id, 
            title: 'Sign up Page', 
            description: 'We need to create sign up page', 
            due_date: Time.now + 1.month, status: 'in_progress')

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: stark.id, 
            title: 'Create Login Page', 
            description: 'We need to create login page with email and password', 
            due_date: Time.now + 1.month, status: 'done')


Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: tony.id, 
            title: 'Analysis of home Page', description: 'Analysis for home page', 
            due_date: Time.now + 1.month, status: 'todo')

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: tony.id, 
            title: 'Design home Page', description: 'Create a for home page', 
            due_date: Time.now + 1.month, status: 'in_progress')

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: tony.id, 
            title: 'User Info', description: 'User info page', 
            due_date: Time.now + 1.month, status: 'in_progress')


Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: spark.id, 
            title: 'Display developers', description: 'Display list of developers in the page', 
            due_date: Time.now + 1.month, status: 'todo')

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: spark.id, 
            title: 'Projects display to admin', description: 'login developers page', 
            due_date: Time.now + 1.month, status: 'in_progress')

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: spark.id, 
            title: 'Todo display to admin', description:  'developers page', 
            due_date: Time.now + 1.month, status: 'done')




