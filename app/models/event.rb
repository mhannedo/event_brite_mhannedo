class Event < ApplicationRecord


    validates :start_date, 
        presence: true

    validate :start_date_not_in_the_past 

    validates_numericality_of :duration, 
        presence: true,
        :only_integer => true, 
        :greater_than_or_equal_to => 0

    validates :title, 
        presence: true,
        length: { in: 5..140 }

    validates :description, 
        presence: true,
        length: { in: 20..1000 }
       
    validates_numericality_of :price, 
        presence: true,
        :only_integer => true, 
        :greater_than_or_equal_to => 0,
        :less_than_or_equal_to =>1000

    validates :location, 
        presence: true

   has_many :attendances
   has_many :participants, through: :attendances, class_name: "User"
   belongs_to :administrator, class_name: "User"

    def start_date_not_in_the_past 

        if !start_date.blank? && start_date < Date.today
            errors.add(:start_date, "can't be in the past")
        end
        
    end 
end


   

