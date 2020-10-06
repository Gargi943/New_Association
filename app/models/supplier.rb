class Supplier < ApplicationRecord
	has_one :account, dependent: :destroy
	validates_presence_of :name
	# attr_accessor :name
end
