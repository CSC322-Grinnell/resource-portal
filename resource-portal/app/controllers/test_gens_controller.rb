class TestGensController < ApplicationController
  before_action :set_test_gen, only: [:show, :edit, :update, :destroy]

  # GET /test_gens
  # GET /test_gens.json
  def index
    @test_gens = TestGen.all
  end

  # GET /test_gens/1
  # GET /test_gens/1.json
  def show
  end

  # GET /test_gens/new
  def new
    @test_gen = TestGen.new
  end

  # GET /test_gens/1/edit
  def edit
  end

  # POST /test_gens
  # POST /test_gens.json
  def create
    @test_gen = TestGen.new(test_gen_params)

    respond_to do |format|
      if @test_gen.save
        format.html { redirect_to @test_gen, notice: 'Test gen was successfully created.' }
        format.json { render :show, status: :created, location: @test_gen }
      else
        format.html { render :new }
        format.json { render json: @test_gen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_gens/1
  # PATCH/PUT /test_gens/1.json
  def update
    respond_to do |format|
      if @test_gen.update(test_gen_params)
        format.html { redirect_to @test_gen, notice: 'Test gen was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_gen }
      else
        format.html { render :edit }
        format.json { render json: @test_gen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_gens/1
  # DELETE /test_gens/1.json
  def destroy
    @test_gen.destroy
    respond_to do |format|
      format.html { redirect_to test_gens_url, notice: 'Test gen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_gen
      @test_gen = TestGen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_gen_params
      params.require(:test_gen).permit(:game, :score)
    end
end
