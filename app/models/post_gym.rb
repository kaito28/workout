class PostGym < ApplicationRecord
 belongs_to :user
 attachment :image
end
