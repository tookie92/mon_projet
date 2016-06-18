class Article < ActiveRecord::Base
	belongs_to :user
	dragonfly_accessor :image
end
