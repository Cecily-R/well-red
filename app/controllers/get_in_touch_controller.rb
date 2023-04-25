class GetInTouchController < ApplicationController
  def show
    @contentful_service = ContentfulClientService.new.client.entries(content_type: 'getInTouchPage').first
  end

  def create 
    @contact = ContactMailer.contact_message(params[:name], params[:email], params[:message])
    if EmailValidator.valid?(@contact.from.first) 
      @contact.deliver
      redirect_back(fallback_location: '/')
      flash[:alert] = "Thanks for getting in touch! We'll get back to you as soon as we can."
    else
      :show
    end 
  end 
end
