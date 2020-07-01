class House < ApplicationRecord
    validates :address, presence: true

has_many(
    :person,
    class_name: 'residents',
    foreign_key: :house_id,
    primary_key: :id
  )
end