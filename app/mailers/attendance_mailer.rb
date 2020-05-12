class AttendanceMailer < ApplicationMailer

    default from: 'maxime.hannedouche@essec.edu'
 
    def attendance_created(attendance)
       
       @attendance = attendance 
       @event = @attendance.event 
       @participant = @attendance.participant 
       mail(to: @participant.email, subject: 'Merci pour votre participation !') 
  
    end
  
end
