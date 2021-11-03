# frozen_string_literal: true

class CabinReservationsController < ApplicationController
  before_action :set_cabin_reservation, only: %i[show edit update destroy]

  # GET /cabin_reservations or /cabin_reservations.json
  def index
    @cabin_reservations = CabinReservation.all
  end

  # GET /cabin_reservations/1 or /cabin_reservations/1.json
  def show; end

  # GET /cabin_reservations/new
  def new
    @cabin_reservation = CabinReservation.new
  end

  # GET /cabin_reservations/1/edit
  def edit; end

  # POST /cabin_reservations or /cabin_reservations.json
  def create
    @cabin_reservation = CabinReservation.new(cabin_reservation_params)

    respond_to do |format|
      if @cabin_reservation.save
        format.html { redirect_to @cabin_reservation, notice: 'Cabin reservation was successfully created.' }
        format.json { render :show, status: :created, location: @cabin_reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cabin_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cabin_reservations/1 or /cabin_reservations/1.json
  def update
    respond_to do |format|
      if @cabin_reservation.update(cabin_reservation_params)
        format.html { redirect_to @cabin_reservation, notice: 'Cabin reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @cabin_reservation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cabin_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabin_reservations/1 or /cabin_reservations/1.json
  def destroy
    @cabin_reservation.destroy
    respond_to do |format|
      format.html { redirect_to cabin_reservations_url, notice: 'Cabin reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cabin_reservation
    @cabin_reservation = CabinReservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cabin_reservation_params
    params.require(:cabin_reservation).permit(:reservation_id, :cabin_id, :date)
  end
end
