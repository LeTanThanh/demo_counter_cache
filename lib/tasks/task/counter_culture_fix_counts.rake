namespace :task do
  desc "Update tasks_count column for all model"

  task counter_culture_fix_counts: :environment do
    Task.counter_culture_fix_counts
  end
end
