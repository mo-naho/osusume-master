class Article < ApplicationRecord
    has_and_belongs_to_many :categories

    validates :title, presence: {message: 'は必須項目です'}
    validates :main, presence: {message: 'は必須項目です'}
    validates :my_date, presence: {message: 'は必須項目です'}
    validates :writer, presence: {message: 'は必須項目です'}

    mount_uploader :image, ImageUploader
end
