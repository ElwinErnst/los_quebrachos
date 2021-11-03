# frozen_string_literal: true

class CampingsController < ApplicationController
  before_action :set_camping, only: %i[show edit update destroy]

  # GET /campings or /campings.json
  def index
    @campings = Camping.all
  end

  # GET /campings/1 or /campings/1.json
  def show; end

  # GET /campings/new
  def new
    @camping = Camping.new
  end

  # GET /campings/1/edit
  def edit; end

  # POST /campings or /campings.json
  def create
    @camping = Camping.new(camping_params)

    respond_to do |format|
      if @camping.save
        format.html { redirect_to @camping, notice: 'Camping was successfully created.' }
        format.json { render :show, status: :created, location: @camping }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @camping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campings/1 or /campings/1.json
  def update
    respond_to do |format|
      if @camping.update(camping_params)
        format.html { redirect_to @camping, notice: 'Camping was successfully updated.' }
        format.json { render :show, status: :ok, location: @camping }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @camping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campings/1 or /campings/1.json
  def destroy
    @camping.destroy
    respond_to do |format|
      format.html { redirect_to campings_url, notice: 'Camping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_camping
    @camping = Camping.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def camping_params
    params.require(:camping).permit(:ubication, :area, :tents)
  end
end
