class CustomerMailer < ApplicationMailer
  def new_customer(customer)
    @customer = customer

    mail(
      to: User.first.email,
      subject: "New Contact Us Form from #{customer.name}"
    )
  end
end
