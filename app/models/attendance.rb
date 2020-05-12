class Attendance < ApplicationRecord

    after_create :new_attendance_send

    belongs_to :participant, class_name: "User"
    belongs_to :event 

    def new_attendance_send
        AttendanceMailer.attendance_created(self).deliver_now
    end
end
