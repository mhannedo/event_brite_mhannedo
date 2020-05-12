class UserMailer < ApplicationMailer

    default from: 'maxime.hannedouche@essec.edu'
 
    def welcome_email(user)
       
       @user = user 
       mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  
    end
  
end
