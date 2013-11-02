class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if verify_recaptcha(@contact) and @contact.save
      Mailer.contact(@contact).deliver
      flash[:success] = "Thank you! Your message was submitted. You will be contacted by us."
      redirect_to "/"
    else
      render "home/contact"
    end
  end

  def contact_params
    params[:contact].permit(:name, :email, :message)
  end
end
