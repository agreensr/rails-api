class Labprofile < ApplicationRecord

    validates :labid, presence: true
    validates :labname, presence: true

end

