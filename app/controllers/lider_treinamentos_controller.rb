class LiderTreinamentosController < ApplicationController
  before_action :set_lider_treinamento, only: [:show, :edit, :update, :destroy]


  # GET /lider_treinamentos
  # GET /lider_treinamentos.json
  def index
    @lider_treinamentos = LiderTreinamento.all
  end

  # GET /lider_treinamentos/1
  # GET /lider_treinamentos/1.json
  def show
  end

  # GET /lider_treinamentos/new
  def new
    @lider_treinamento = LiderTreinamento.new
  end

  # GET /lider_treinamentos/1/edit
  def edit
  end

  # POST /lider_treinamentos
  # POST /lider_treinamentos.json
  def create
    @lider_treinamento = LiderTreinamento.new(lider_treinamento_params)

    respond_to do |format|
      if @lider_treinamento.save
        format.html { redirect_to @lider_treinamento, notice: 'Lider treinamento was successfully created.' }
        format.json { render :show, status: :created, location: @lider_treinamento }
      else
        format.html { render :new }
        format.json { render json: @lider_treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lider_treinamentos/1
  # PATCH/PUT /lider_treinamentos/1.json
  def update
    respond_to do |format|
      if @lider_treinamento.update(lider_treinamento_params)
        format.html { redirect_to @lider_treinamento, notice: 'Lider treinamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @lider_treinamento }
      else
        format.html { render :edit }
        format.json { render json: @lider_treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lider_treinamentos/1
  # DELETE /lider_treinamentos/1.json
  def destroy
    @lider_treinamento.destroy
    respond_to do |format|
      format.html { redirect_to lider_treinamentos_url, notice: 'Lider treinamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lider_treinamento
      @lider_treinamento = LiderTreinamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lider_treinamento_params
      params.require(:lider_treinamento).permit(:id_lider_treinamento, :member_id, :celula_id)
    end
end
