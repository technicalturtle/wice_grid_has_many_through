class User < ActiveRecord::Base
   has_many :user_project_participations
   has_many :projects, :through => :user_project_participations
   
   has_many :user_task_assignments
   has_many :tasks, :through => :user_task_assignments
end
