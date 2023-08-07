class PeopleController < ApplicationController
  before_action :authenticate_person!, except: [:new, :create]

  def index
    @people = Person.all
  end

  def show
    @person = current_person
  end

  def new
    @person = Person.new
  end

  def edit
    @person = current_person
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to person_url(@person), notice: "Person was successfully created." }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @person = current_person
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to person_url(@person), notice: "Person was successfully updated." }
        format.json { render :show, status: :ok, location: @person }
      else
        # Manejar el caso en el que la actualización falla, tal vez renderizando el formulario de edición nuevamente con los errores.
      end
    end
  end

  def destroy
    @person = current_person
    if @person.destroy
      redirect_to people_url, notice: "Person was successfully destroyed."
    else
      redirect_to people_url, alert: "Failed to destroy person."
    end
  end

  private

  # Resto del código del controlador...
end
