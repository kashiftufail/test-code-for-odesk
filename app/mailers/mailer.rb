class Mailer < ActionMailer::Base
  default from: "from@example.com"
  TO = "info@1magine.ca"

  def evaluation(evaluation)
    @evaluation = evaluation
    mail(to: TO, subject: "Home Evaluation request from #{evaluation.name}")
  end

  def hot_listing(hot_listing)
    @hot_listing = hot_listing
    mail(to: TO, subject: "New Listing Subscription request from #{hot_listing.name}")
  end

  def contact(contact)
    @contact = contact
    mail(to: TO, subject: "Contact request from #{contact.name}")
  end
end
