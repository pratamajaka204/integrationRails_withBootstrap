class Article < ApplicationRecord
	validates :title, presence: true,
						length: { minimum: 5 }
	validates :content, presence: true,
						length: { minimum: 10 }
	validates :status, presence: true

	scope :status_active, -> {where(status: 'active')}
	default_scope {where(status: 'active')}
end
