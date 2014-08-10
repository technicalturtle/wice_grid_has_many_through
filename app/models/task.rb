class Task < ActiveRecord::Base
    has_many :user_task_assignments
    has_many :users, :through => :user_task_assignments
end
