class LineIntemsController < ApplicationController
  before_action :set_line_intem, only: [:show, :edit, :update, :destroy]

  # GET /line_intems
  # GET /line_intems.json
  def index
    @line_intems = LineIntem.all
  end

  # GET /line_intems/1
  # GET /line_intems/1.json
  def show
  end

  # GET /line_intems/new
  def new
    @line_intem = LineIntem.new
  end

  # GET /line_intems/1/edit
  def edit
  end

  # POST /line_intems
  # POST /line_intems.json
  def create
    @line_intem = LineIntem.new(line_intem_params)

    respond_to do |format|
      if @line_intem.save
        format.html { redirect_to @line_intem, notice: 'Line intem was successfully created.' }
        format.json { render :show, status: :created, location: @line_intem }
      else
        format.html { render :new }
        format.json { render json: @line_intem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_intems/1
  # PATCH/PUT /line_intems/1.json
  def update
    respond_to do |format|
      if @line_intem.update(line_intem_params)
        format.html { redirect_to @line_intem, notice: 'Line intem was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_intem }
      else
        format.html { render :edit }
        format.json { render json: @line_intem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_intems/1
  # DELETE /line_intems/1.json
  def destroy
    @line_intem.destroy
    respond_to do |format|
      format.html { redirect_to line_intems_url, notice: 'Line intem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_intem
      @line_intem = LineIntem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_intem_params
      params.require(:line_intem).permit(:product_id, :cart_id)
    end
end
