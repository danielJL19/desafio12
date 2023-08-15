class DocumentaryFilm < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :synopsis, presence: true
    validates :director ,presence: true
end
