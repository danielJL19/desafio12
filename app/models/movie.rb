# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
#  name       :string
#  synopsis   :text
#  director   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Movie < ApplicationRecord
    #validates
    validates :name,  presence: true, uniqueness: true
    validates :synopsis, presence: true
    validates :director ,presence: true
end
