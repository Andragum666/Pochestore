class InventoryRegistriesController < ApplicationController
  before_action :set_inventory_registry, only: [:show, :edit, :update, :destroy]

  # GET /inventory_registries
  # GET /inventory_registries.json
  def index
    @inventory_registries = InventoryRegistry.all
  end

  # GET /inventory_registries/1
  # GET /inventory_registries/1.json
  def show
  end

  # GET /inventory_registries/new
  def new
    @inventory_registry = InventoryRegistry.new
  end

  # GET /inventory_registries/1/edit
  def edit
  end

  # POST /inventory_registries
  # POST /inventory_registries.json
  def create
    @inventory_registry = InventoryRegistry.new(inventory_registry_params)

    respond_to do |format|
      if @inventory_registry.save
        format.html { redirect_to @inventory_registry, notice: 'Inventory registry was successfully created.' }
        format.json { render :show, status: :created, location: @inventory_registry }
      else
        format.html { render :new }
        format.json { render json: @inventory_registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_registries/1
  # PATCH/PUT /inventory_registries/1.json
  def update
    respond_to do |format|
      if @inventory_registry.update(inventory_registry_params)
        format.html { redirect_to @inventory_registry, notice: 'Inventory registry was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory_registry }
      else
        format.html { render :edit }
        format.json { render json: @inventory_registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_registries/1
  # DELETE /inventory_registries/1.json
  def destroy
    @inventory_registry.destroy
    respond_to do |format|
      format.html { redirect_to inventory_registries_url, notice: 'Inventory registry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_registry
      @inventory_registry = InventoryRegistry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_registry_params
      params.require(:inventory_registry).permit(:user_id, :inventory_id)
    end
end
