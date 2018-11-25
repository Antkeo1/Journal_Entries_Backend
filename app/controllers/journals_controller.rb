# frozen_string_literal: true

class JournalsController < ApplicationController
  def index
    @journals = journals.all()

    # give book data back to client
    render json: @journals
  end

  def create
    @journal = Journal.create(book_params)

    render json: @journal
  end

  def update
    @journal = Journal.find(params[:id])

    if @journal.update(journal_params)
      render json: @journal
    else
      render json: @journal.error, status: :unprocessable_entity
    end
  end

  def journal_params
    params.require(:user).permit(:Title, :Subject)
  end

  # private :book_params
end
