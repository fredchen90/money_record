module RecordsHelper
	def render_total_price
		@records =  current_user_records
		sum = 0
		@records.each do |e|
			sum = sum + e.price
		end
		sum
	end
end
