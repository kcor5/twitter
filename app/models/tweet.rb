class Tweet < ApplicationRecord
	validates :content, length: {maximum: 10}
end
