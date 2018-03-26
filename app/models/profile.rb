class Profile < ApplicationRecord
  belongs_to :user
  
  validates :m_lang, presence: true
end
