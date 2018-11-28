# frozen_string_literal: true

class JournalsController < ProtectedController
  before_action :set_journal, only: %i[show update destroy]

  # GET /journals
  def index
    @journals = Journal.all

    render json: @journals
  end

  # GET /journals/1
  def show
    render json: Journal.find(params[:id])
  end

  # POST /journals
  def create

    @journal = current_user.journals.build(params[:id, :title, :subject, :text])

    if @journal.save
      render json: @journal, status: :created, location: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /journals/1
  def update
    if @journal.update(journal_params)
      render json: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /journals/1
  def destroy
    @journal.destroy
  end

  #private

  # Use callbacks to share common setup or constraints between actions.
  def set_journal
    @journal = Journal.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def journal_params
    params.require(:journal).permit(:title, :subject, :text)
  end
end
