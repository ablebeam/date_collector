class DateTestsController < ApplicationController
  before_action :set_date_test, only: [:show, :edit, :update, :destroy]

  # GET /date_tests
  # GET /date_tests.json
  def index
    @date_tests = DateTest.all
  end

  # GET /date_tests/1
  # GET /date_tests/1.json
  def show
  end

  # GET /date_tests/new
  def new
    @date_test = DateTest.new
  end

  # GET /date_tests/1/edit
  def edit
  end

  # POST /date_tests
  # POST /date_tests.json
  def create
    @date_test = DateTest.new(date_test_params)

    respond_to do |format|
      if @date_test.save
        format.html { redirect_to date_tests_path, notice: 'Дата добавлена.' }
        format.json { render :show, status: :created, location: @date_test }
      else
        format.html { render :new }
        format.json { render json: @date_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_tests/1
  # PATCH/PUT /date_tests/1.json
  def update
    respond_to do |format|
      if @date_test.update(date_test_params)
        format.html { redirect_to date_tests_path, notice: 'Дата обновлена.' }
        format.json { render :show, status: :ok, location: @date_test }
      else
        format.html { render :edit }
        format.json { render json: @date_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_tests/1
  # DELETE /date_tests/1.json
  def destroy
    @date_test.destroy
    respond_to do |format|
      format.html { redirect_to date_tests_url, notice: 'Дата удалена.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_test
      @date_test = DateTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_test_params
      params.require(:date_test).permit(:name, :expected)
    end
end
