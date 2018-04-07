class Placetype < ApplicationRecord
    belongs_to :user, :optional => true

    def self.import(file, current_user)

        require 'csv'

        CSV.foreach(file.path, headers: true) do |row|
    
          placetype = new
          placetype.attributes = row.to_hash.slice(*updatable_attributes)
          placetype.user_id = current_user.id
          placetype.save!
        end
    end
    
    def self.updatable_attributes
        ["name"]
    end
end
