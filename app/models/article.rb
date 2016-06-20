class Article < ActiveRecord::Base
	belongs_to :user
	dragonfly_accessor :image
	has_many :comments
end
