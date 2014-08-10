class Project < ActiveRecord::Base
    has_many :user_project_participations
    has_many :users, :through => :user_project_participations
end
