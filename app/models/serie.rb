# == Schema Information
#
# Table name: series
#
#  id         :bigint           not null, primary key
#  name       :string
#  synopsis   :string
#  director   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Serie < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :synopsis, presence: true
    validates :director ,presence: true
end
