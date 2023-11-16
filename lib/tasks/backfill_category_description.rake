namespace :db do
    desc 'Backfill existing categories with descriptions'
    task :backfill_category_description => :environment do
    
      Category.where(description: nil) do |category|
        category.update(description: "Your new description is #{category}")
      end
    end
  end