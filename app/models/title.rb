lass Title < ApplicationRecord
  validates :title, uniqueness: true
end
