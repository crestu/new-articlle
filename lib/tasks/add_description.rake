namespace :backfill do
    desc 'Backfill existing categories with descriptions'
    task :categories => :environment do
    
      Category.all.each do |category|
        category.update(description: "Your new description is #{Category}")
      end
    end
  end