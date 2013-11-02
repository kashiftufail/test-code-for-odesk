class EvaluationsController < ApplicationController
  def create  
    @evaluation = Evaluation.new(evaluation_params)

    if @evaluation.save
      Mailer.evaluation(@evaluation).deliver
      flash[:success] = "Thanks for submitting your request. We will evaluate your home and contact you."
      redirect_to "/"
    else
      render "home/evaluation"
    end
  end

  def evaluation_params
    params[:evaluation].permit(:email, :name, :phone, :address, :city, :postal_code, :bedrooms, :bathrooms, :size, :age, :features, :comments, :province)
  end
end
