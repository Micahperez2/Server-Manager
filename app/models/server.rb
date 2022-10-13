class Server < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6}
    validates :model_number, presence: true, length: { minimum: 6 }
    validates :description, presence: true, length: { minimum: 10 }
end
