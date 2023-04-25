class GetInTouchController < ApplicationController
  def show
    @contentful_service = ContentfulClientService.new.client.entries(content_type: 'getInTouchPage').first
  end

  def create
    @contact = ContactMailer.contact_message(params[:name], params[:email], params[:message])
    @valid_email = EmailValidator.valid?(@contact.from.first)

    if @valid_email && @contact.deliver
      flash[:alert] = "Thanks for getting in touch! We'll get back to you as soon as we can."
      redirect_to get_in_touch_path
    elsif !@valid_email
      flash[:alert] = "Oops, it looks like you've entered an incorrect email address"
      redirect_to get_in_touch_path
    else
      flash[:alert] = "Oops, something went wrong!"
      redirect_to get_in_touch_path
    end 
  end 
end
