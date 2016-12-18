require 'csv'

namespace :csv do

  desc "Import shops_shopmium CSV Data"
  task :import_shops => :environment do

    csv_file_path = 'db/shops_shopmium.csv'

    CSV.foreach(csv_file_path) do |row|
      Magasin.create!({
        :chain => row[0],
        :name => row[1],
        :latitude => row[2],
        :longitude => row[3],
        :address => row[4],
        :city => row[5],
        :zip => row[6],
        :phone => row[8],
        :country_code => row[18],
      })
      puts "Row added!"
    end
  end
end
