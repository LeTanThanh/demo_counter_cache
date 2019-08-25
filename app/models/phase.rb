class Phase < ApplicationRecord
  belongs_to :project
  has_many :tasks, dependent: :destroy

  counter_culture :project
end
