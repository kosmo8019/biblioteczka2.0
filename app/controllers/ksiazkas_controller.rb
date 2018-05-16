class KsiazkasController < ApplicationController
  before_action :znajdz_ksiazka, only: [:show, :edit, :update, :destroy]

  # GET /ksiazkas
  # GET /ksiazkas.json
  def index
    @ksiazkas = Ksiazka.all.order("created_at DESC")
  end

  # GET /ksiazkas/1
  # GET /ksiazkas/1.json
  def show

  end

  # GET /ksiazkas/new
  def new
    #łączymy ksiażekę  z uzytkownikiem
    @ksiazka = current_uzytkownik.ksiazkas.build
  end

  # GET /ksiazkas/1/edit
  def edit
  end

  # POST /ksiazkas
  # POST /ksiazkas.json
  def create
    @ksiazka = current_uzytkownik.ksiazkas.build(ksiazka_params)

    respond_to do |format|
      if @ksiazka.save
        format.html { redirect_to @ksiazka, notice: 'Ksiazka was successfully created.' }
        format.json { render :show, status: :created, location: @ksiazka }
      else
        format.html { render :new }
        format.json { render json: @ksiazka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ksiazkas/1
  # PATCH/PUT /ksiazkas/1.json
  def update
    respond_to do |format|
      if @ksiazka.update(ksiazka_params)
        format.html { redirect_to @ksiazka, notice: '' }
        format.json { render :show, status: :ok, location: @ksiazka }
      else
        format.html { render :edit }
        format.json { render json: @ksiazka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ksiazkas/1
  # DELETE /ksiazkas/1.json
  def destroy
    @ksiazka.destroy
    respond_to do |format|
      format.html { redirect_to ksiazkas_url, notice: 'Ksiazka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def znajdz_ksiazka
      @ksiazka = Ksiazka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ksiazka_params
      params.require(:ksiazka).permit(:tytul, :opis, :autor)
    end
end

