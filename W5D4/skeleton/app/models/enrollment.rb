class Enrollment < ApplicationRecord
    belongs_to :user,
        primary_key: :id,
        foreign_key: :student_id, 
        class_name: :User

    has_many :courses, 
        primary_key: :id, 
        foreign_key: :prereq_id, 
        class_name: :Course
    
end
