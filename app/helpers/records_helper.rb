module RecordsHelper
	def render_total_price
		@records = Record.all
		sum = 0
		@records.each do |e|
			sum = sum + e.price
		end
		sum
	end
end
