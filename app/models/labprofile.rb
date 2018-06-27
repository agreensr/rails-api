class Labprofile < ApplicationRecord
    validates :labName, presence: true
    validates :labLogin, presence: true

end

