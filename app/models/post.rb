class Post < ActiveRecord::Base
	extend FriendlyId
	
	friendly_id :slug_candidates, use: [:slugged, :finders]

	validates_presence_of :title
	validates_presence_of :body

	def slug_candidates
		[
			:title,
			[:title, :id]
		]
	end

end