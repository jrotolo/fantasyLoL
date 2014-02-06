class Team < ActiveRecord::Base
	belongs_to :user
	validates :name, presence: true, length: { maximum: 40 }
end
