class Foodtype < ApplicationRecord
    belongs_to :user, :optional => true

    def self.import(file, current_user)
    
        require 'csv'
    
        CSV.foreach(file.path, headers: true) do |row|
        
          foodtype = new
          foodtype.attributes = row.to_hash.slice(*updatable_attributes)
          foodtype.user_id = current_user.id
          foodtype.save!
        end
    end
        
    def self.updatable_attributes
        ["name"]
    end
end
