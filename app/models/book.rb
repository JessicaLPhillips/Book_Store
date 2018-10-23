class Book < ApplicationRecord
	belongs_to :author, class_name: "User"
	has_many :sales
	has_many :users, through: :sales
end
