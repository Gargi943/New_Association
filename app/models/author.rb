class Author < ApplicationRecord
	has_many :books, dependent: :delete_all
	accepts_nested_attributes_for :books, reject_if: :all_blank, allow_destroy: true
	validates :name, presence: true
	# , format: { with: /\A[a-zA-Z]+\z/,
    #  message: "only allows letters" }, length: { minimum: 2 }
    # validates_format_of :name, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

    # validates_each :name do |record, attr, value|
	# record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/

end