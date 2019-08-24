namespace :product do
  desc "Update products_count column for all model"

  task counter_culture_fix_counts: :environment do
    Product.counter_culture_fix_counts
  end
end
