class Post < ActiveRecord::Base
	has_many :comentarios
	validates :contenido, :titulo, 
				presence: true
	before_create :set_like

	def set_like
		self.likes=0
	end
end
