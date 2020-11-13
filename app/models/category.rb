class Category < ApplicationRecord
    has_and_belongs_to_many :articles

    validates :name, presence: {message: 'は必須項目です'}
end
