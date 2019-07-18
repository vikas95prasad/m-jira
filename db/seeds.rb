# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'

#Create Users
star_wars = User.create(email: 'starwars@mail.com', username: 'starwars', role: 'admin', password: 'test@123', password_confirmation: 'test@123')

tony = User.create(email: 'tony@mail.com', username: 'tony', role: 'developer', 
                   password: 'test@123', password_confirmation: 'test@123')

stark = User.create(email: 'stark@mail.com', username: 'stark', role: 'developer',
                   password: 'test@123', password_confirmation: 'test@123')

spark = User.create(email: 'spark@mail.com', username: 'spark', role: 'developer',
                    password: 'test@123', password_confirmation: 'test@123')

status = ['todo','in_progress','done']
users_ids = User.order("RANDOM()").limit(10).ids

#Create Projects

m_jira = Project.create(owner_id: star_wars.id, name: 'M-JIRA', 
                        description: 'Mini Jira for project management', status: 'active', 
                        due_date: Time.now + 1.month)

blog_proj = Project.create(owner_id: star_wars.id, name: 'Blog Project', 
                           description: 'Client A, Blog Project', 
                           status: 'complete', due_date: Time.now + 1.month)

booking_proj = Project.create(owner_id: star_wars.id, name: 'Booking Platform', 
                           description: 'Client Z, Booking System', 
                           status: 'active', due_date: Time.now + 1.month)

lead_management = Project.create(owner_id: star_wars.id, name: 'Lead CRM', 
                           description: 'Client Z, Lead management CRM', 
                           status: 'active', due_date: Time.now + 1.month)

#Create todo for project
Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'Analysis Login Page', 
            description: 'Analysis of login page', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'Create sign up Page', 
            description: 'We need to create sign up page', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'Sign up Page', 
            description: 'We need to create sign up page', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'Create Login Page', 
            description: 'We need to create login page with email and password', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'Analysis of home Page', description: 'Analysis for home page', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'Design home Page', description: 'Create a for home page', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: m_jira.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'User Info', description: 'User info page', 
            due_date: Time.now + 1.month, status: status.sample)


Todo.create(project_id: lead_management.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'Lead form', description:  'Lead from, for more details refer docs.', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: lead_management.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'SiteVisit form', description:  'SiteVisit, form for lead', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: lead_management.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'Follow Up', description:  'Followup details', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: lead_management.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'List Leads', description:  'Leads page to view all the details', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: lead_management.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: 'Form modifications', description:  'Followup and sitevisit form modifications', 
            due_date: Time.now + 1.month, status: status.sample)

Todo.create(project_id: lead_management.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
            title: '404 Error Not Found', description:  'Login Page', 
            due_date: Time.now + 1.month, status: status.sample)


Todo.create(project_id: booking_proj.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
      title: Faker::Company.bs, description:  Faker::Company.bs, 
      due_date: Time.now + 1.month, status: status.sample)


Todo.create(project_id: blog_proj.id, owner_id: star_wars.id, developer_id: users_ids.sample, 
      title: Faker::Company.bs, description:  Faker::Company.bs, 
      due_date: Time.now + 1.month, status: status.sample)


