namespace :group_user do
  desc "Update groups_count, users_count column for all model"

  task counter_culture_fix_counts: :environment do
    GroupUser.counter_culture_fix_counts
  end
end
