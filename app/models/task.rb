class Task < ApplicationRecord
  belongs_to :phase

  counter_culture [:phase, :project]
end
