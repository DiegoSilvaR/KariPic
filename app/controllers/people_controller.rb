class PeopleController < ApplicationController
  # before_action :authenticate_person!, except: [:new, :create, :sign_in, :log_in]

  # GET /people or /people.json
  def index
    @people = Person.all
  end

  # GET /people/1 or /people/1.json
  def show
    @person = current_person
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
    @person = current_person
  end

  # POST /people or /people.json
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

  # PATCH/PUT /people/1 or /people/1.json
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

  # DELETE /people/1 or /people/1.json
  def destroy
    @person = current_person
    if @person.destroy
      redirect_to people_url, notice: "Person was successfully destroyed."
    else
      redirect_to people_url, alert: "Failed to destroy person."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:name, :email, :password_digest, :avatar)
    end
end
