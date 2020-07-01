class Person < ApplicationRecord
    validates :name, presence: true
    validates :house_id, presence: true

    belongs_to(
    :houses,
    class_name: 'Person',
    foreign_key: :address,
    primary_key: :id
    )
end