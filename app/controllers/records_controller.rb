class RecordsController < ApplicationController

  before_action :get_record, only: [:show, :edit, :update, :destroy]

  def index
    @records = Record.find_by_user(current_user.id)
  end

  def show

  end

  def new
    @record = Record.new
  end

  def create
    @record = current_user.records.new(record_params)

    if(@record.save)
      redirect_to records_path
    else
      render 'records/new'
    end
  end

  def edit

  end

  def update
    if(@record.update_attributes(record_params))
      redirect_to records_path
    else
      render 'records/edit'
    end
  end

  def destroy
    if(@record.destroy)
      redirect_to records_path
    end
  end

  private
  def record_params
    params.require(:record).permit(:author_id, :name, :year, :tracks)
  end

  def get_record
    @record = Record.find(params[:id])
  end
end
