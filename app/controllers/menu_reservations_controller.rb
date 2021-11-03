# frozen_string_literal: true

class MenuReservationsController < ApplicationController
  before_action :set_menu_reservation, only: %i[show edit update destroy]

  # GET /menu_reservations or /menu_reservations.json
  def index
    @menu_reservations = MenuReservation.all
  end

  # GET /menu_reservations/1 or /menu_reservations/1.json
  def show; end

  # GET /menu_reservations/new
  def new
    @menu_reservation = MenuReservation.new
  end

  # GET /menu_reservations/1/edit
  def edit; end

  # POST /menu_reservations or /menu_reservations.json
  def create
    @menu_reservation = MenuReservation.new(menu_reservation_params)

    respond_to do |format|
      if @menu_reservation.save
        format.html { redirect_to @menu_reservation, notice: 'Menu reservation was successfully created.' }
        format.json { render :show, status: :created, location: @menu_reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @menu_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_reservations/1 or /menu_reservations/1.json
  def update
    respond_to do |format|
      if @menu_reservation.update(menu_reservation_params)
        format.html { redirect_to @menu_reservation, notice: 'Menu reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_reservation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @menu_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_reservations/1 or /menu_reservations/1.json
  def destroy
    @menu_reservation.destroy
    respond_to do |format|
      format.html { redirect_to menu_reservations_url, notice: 'Menu reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_menu_reservation
    @menu_reservation = MenuReservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def menu_reservation_params
    params.require(:menu_reservation).permit(:reservation_id, :menu_id, :date)
  end
end
