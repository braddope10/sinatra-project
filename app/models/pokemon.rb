class Pokemon < ActiveRecord::Base

    belongs_to :user

    has_many :types

end