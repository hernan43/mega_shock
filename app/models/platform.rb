class Platform < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :slug, presence: true, uniqueness: true
end
