class EmailsController < ApplicationController
  def index
    @email = Email.all
  end

  def create
    @email = Email.create(objet: Faker::Company.name, body: Faker::Lorem.paragraph(sentence_count: 2))
    

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def destroy
  end

  private
  
  def book_params
    params.permit(:objet, :body)
  end
end
