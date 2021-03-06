class Food < ApplicationRecord
    belongs_to :user, :optional => true
    mount_uploader :picture, PictureUploader

    def self.import(file, current_user)

        require 'csv'

        CSV.foreach(file.path, headers: true) do |row|
    
          food = new
          food.attributes = row.to_hash.slice(*updatable_attributes)
          food.user_id = current_user.id
          food.save!
        end
    end
    
    def self.updatable_attributes
        ["name","date","food","place","count","counttype"]
    end
end
