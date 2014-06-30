class User < ActiveRecord::Base
	has_many :articles
	validates :first_name, :last_name, :email_id, :password, presence: true
	validates :first_name, :last_name, length: { minimum: 3 }
	validates :password, length: { minimum: 5 }, confirmation: true
	validates :email_id,  format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
