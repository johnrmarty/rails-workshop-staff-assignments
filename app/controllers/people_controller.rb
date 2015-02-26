class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(params.require(:person).permit(:first_name, :last_name, :title))
    if @person.save
      redirect_to root_path, notice: "Person was created!"
    else
      render :new
    end
  end


  def edit
    @person = Person.find(params[:id])
  end

def destroy
      @person = Person.find(params[:id])
      @person.destroy
      redirect_to root_path, notice: 'Person was successfully deleted.'
    end

private
    def person_params
      params.require(:Person).permit(:first_name, :last_name, :title)
    end
end 

