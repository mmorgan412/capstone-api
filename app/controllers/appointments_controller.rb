class AppointmentsController < ProtectedController
  before_action :set_appointment, only: [:show, :update, :destroy]

  # GET /appointments
  def index
    current_pet = current_user.pets.find(params[:pet_id])
    @appointments = current_pet.appointments

    render json: @appointments
  end

  # GET /appointments/1
  def show
    @appointment = Appointment.find(params[:id])

    render json: @appointment
  end

  # POST /appointments
  def create
    @appointment = current_user.appointments.build(appointment_params)

    if @appointment.save
      render json: @appointment, status: :created, location: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointments/1
  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  def destroy
    @appointment.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = current_user.appointments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appointment_params
      params.require(:appointment).permit(:date, :time, :description, :cost, :weight, :notes, :pet_id)
    end
end
