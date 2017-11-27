class PetsController < ProtectedController
  before_action :set_pet, only: [:update, :destroy, :show]

  def index
    @pets = current_user.pets.all

      render json: @pets
  end

  # GET /pets/1
  def show
    @pet = Pet.find(params[:id])

    render json: @pet
  end

  # POST /pets
  def create
    @pet = current_user.pets.build(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = current_user.pets.find(params[:id])
    end
    # Only allow a trusted parameter "white list" through.
    def pet_params
      params.require(:pet).permit(:name, :license_number, :breed, :insurance_info, :vet)
    end
end
