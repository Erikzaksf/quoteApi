class QuotesController < ActionController::Base

  def index
    render jsonapi: Quote.all, include: [:author, :content]
  end

  def show
    @quote = Quote.find(params[:id])
    render jsonapi: @quote, include: [:author, :content]
  end

  def create
    @quote = Quote.create!(quote_params)
    json_response(@quote, :created)
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update!(quote_params)
       render status: 200, json: {
        message: "Your quote has been updated successfully."
        }
     end
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
  end

  private

  def quote_params
    params.permit(:author, :content)
  end

end
