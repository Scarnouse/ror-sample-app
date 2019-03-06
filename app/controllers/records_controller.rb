class RecordsController < ApplicationController
  def index
    @records = Record.where user_id: current_user.id
  end

  def show
    @record = Record.find(params[:id])
    #render plain: @record.inspect
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.user_id = current_user.id

    if(@record.save)
      redirect_to records_path
    else
      render 'records/new'
    end
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    if(@record.update_attributes(record_params))
      redirect_to records_path
    else
      render 'records/edit'
    end
  end

  def destroy
    @record = Record.find(params[:id])

    if(@record.destroy)
      redirect_to records_path
    end
  end

  private
  def record_params
    params.require(:record).permit(:author, :name, :year, :tracks)
  end
end
