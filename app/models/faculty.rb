class Faculty < ApplicationRecord
  belongs_to :university

  has_many :lessons
end
