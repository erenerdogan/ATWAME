class AttachmentController < ApplicationController
skip_before_filter :verify_authenticity_token

	def index
		@attachment = Attachment.all
	end

  def create
  	@attachment = Attachment.new
  	
  	@attachment.save
  	
  end
end
