namespace :db do
    desc "Fill description in category."

    task add_description: :environment do

        category_description = ["Tech desc", "Travel desc", "Food desc", "Fashion desc"]

        category_description.each do |desc|

            Category.find_or_create_by!(desctription: desc )
            puts "Categeory '#{desc}' added."
        end
        puts "Categories desc added successfully"
    end
end