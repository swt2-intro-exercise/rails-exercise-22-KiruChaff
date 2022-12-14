class Paper < ApplicationRecord
    validates :title, :venue, :year, presence: true
    validates :year, numericality: {only_integer: true}
    has_and_belongs_to_many :authors
    
    scope :year,  -> (publishing_year) { where("year IS ?", publishing_year)}

end
