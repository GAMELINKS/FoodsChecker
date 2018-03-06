class Placetype < ApplicationRecord
    belongs_to :user, :optional => true
end
