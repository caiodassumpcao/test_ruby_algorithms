class Title < ApplicationRecord
  validates :title, uniqueness: true
end
