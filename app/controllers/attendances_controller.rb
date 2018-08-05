class AttendancesController < ApplicationController


	# Here, qr code will set the classday_id and present to current class's id and yes respectively.

	def index
		@qr = RQRCode::QRCode.new( render :"", :size => 4, :level => :h ) # after qr code is scanned, redirect to root
    end

    DEF ATTENDANCE FORM
    	
    end
  


end
