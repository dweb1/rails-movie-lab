class Film < ApplicationRecord
    has_many :favorites
    has_many :user, through: :favorites
end
