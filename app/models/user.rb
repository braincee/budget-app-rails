class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 100 }

    has_many :groups, dependent: :delete_all
    has_many :entities, dependent: :delete_all
end
