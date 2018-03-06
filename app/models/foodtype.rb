class Foodtype < ApplicationRecord
    belongs_to :user, :optional => true
end
