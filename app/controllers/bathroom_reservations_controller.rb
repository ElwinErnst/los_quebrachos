class BathroomReservationsController < ApplicationController
  before_action :set_bathroom_reservation, only: %i[ show edit update destroy ]

  # GET /bathroom_reservations or /bathroom_reservations.json
  def index
    @bathroom_reservations = BathroomReservation.all
  end

  # GET /bathroom_reservations/1 or /bathroom_reservations/1.json
  def show
  end

  # GET /bathroom_reservations/new
  def new
    @bathroom_reservation = BathroomReservation.new
  end

  # GET /bathroom_reservations/1/edit
  def edit
  end

  # POST /bathroom_reservations or /bathroom_reservations.json
  def create
    @bathroom_reservation = BathroomReservation.new(bathroom_reservation_params)

    respond_to do |format|
      if @bathroom_reservation.save
        format.html { redirect_to @bathroom_reservation, notice: "Bathroom reservation was successfully created." }
        format.json { render :show, status: :created, location: @bathroom_reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bathroom_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bathroom_reservations/1 or /bathroom_reservations/1.json
  def update
    respond_to do |format|
      if @bathroom_reservation.update(bathroom_reservation_params)
        format.html { redirect_to @bathroom_reservation, notice: "Bathroom reservation was successfully updated." }
        format.json { render :show, status: :ok, location: @bathroom_reservation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bathroom_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bathroom_reservations/1 or /bathroom_reservations/1.json
  def destroy
    @bathroom_reservation.destroy
    respond_to do |format|
      format.html { redirect_to bathroom_reservations_url, notice: "Bathroom reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bathroom_reservation
      @bathroom_reservation = BathroomReservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bathroom_reservation_params
      params.require(:bathroom_reservation).permit(:reservation_id, :bathroom_id)
    end
end
