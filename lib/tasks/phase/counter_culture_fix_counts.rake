namespace :phase do
  desc "Update phases_count column for all model"

  task counter_culture_fix_counts: :environment do
    Phase.counter_culture_fix_counts
  end
end
