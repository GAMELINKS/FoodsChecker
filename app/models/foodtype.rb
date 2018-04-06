class Foodtype < ApplicationRecord
    belongs_to :user, :optional => true

    def self.import(file, id)
    
        require 'csv'
    
        CSV.foreach(file.path, headers: true) do |row|
        
          foodtype = new
          foodtype.attributes = row.to_hash.slice(*updatable_attributes)
          foodtype.user_id = id
          foodtype.save!
        end
    end
        
    def self.updatable_attributes
        ["name"]
    end
end
