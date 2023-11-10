namespace :db do
    desc "Add four categories to the database"
    task add_categories: :environment do 
        #define category names here
        category_names = ["Technology", "Travel", "Food", "Fashion"]

        category_names.each do |name|
            Category.find_or_create_by!(name: name)
            puts "Category '#{name}' added"

        end

        puts "Categories added successfully"
        
    end
end