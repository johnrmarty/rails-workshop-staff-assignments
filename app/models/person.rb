class Person < ActiveRecord::Base

	validates :first_name, presence: true, uniqueness: {case_sensitive: false}
	validates :last_name, presence: true, uniqueness: {case_sensitive: false}
	validates :title, presence: true, uniqueness: {case_sensitive: false}

	def full_name
  [first_name, last_name].join(' ')
end



end