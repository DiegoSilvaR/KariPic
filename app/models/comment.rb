class Comment < ApplicationRecord
  belongs_to :person
  belongs_to :photo

  validates :person_id, presence: true
end
