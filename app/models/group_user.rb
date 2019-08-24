class GroupUser < ApplicationRecord
  belongs_to :group
  belongs_to :user

  counter_culture :group, column_name: :users_count
  counter_culture :user, column_name: :groups_count
end
