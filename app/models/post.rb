class Post < ApplicationRecord
	has_rich_text :comment
	has_many :comments, dependent: :destroy
	has_many :likes, dependent: :destroy
	validates_presence_of :title
end
