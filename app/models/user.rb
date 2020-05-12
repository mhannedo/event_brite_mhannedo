class User < ApplicationRecord

    has_many :attendances, foreign_key: "participant"
    has_many :events, through: :attendances, foreign_key: "participant"
    has_many :events, foreign_key: "administrator"

end
