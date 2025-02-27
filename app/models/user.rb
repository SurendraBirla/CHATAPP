class User < ApplicationRecord
     has_many :messages
	 validates_uniqueness_of :username
     scope :all_except, ->(user) { where.not(id: user) }
     
end
