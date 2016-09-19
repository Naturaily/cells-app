class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  # GET /departments
  # GET /departments.json
  def index
    render html: cell(IndexCell, items: Department.all, model_name: 'department',
      attributes: [:name, :company], notice: notice)
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
    render html: cell(ShowCell, item: @department, model_name: 'department',
      attributes: [:name, :company], notice: notice)
  end

  # GET /departments/new
  def new
    render html: cell(NewCell, item: Department.new, model_name: 'department',
      attributes: [:name, :company_id])
  end

  # GET /departments/1/edit
  def edit
    render html: cell(EditCell, item: @department, model_name: 'department',
      attributes: [:name, :company_id], notice: notice)
  end

  # POST /departments
  # POST /departments.json
  def create
    @department = Department.new(department_params)

    respond_to do |format|
      if @department.save
        format.html { redirect_to @department, notice: 'Department was successfully created.' }
        format.json { render :show, status: :created, location: @department }
      else
        format.html { render :new }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update
    respond_to do |format|
      if @department.update(department_params)
        format.html { redirect_to @department, notice: 'Department was successfully updated.' }
        format.json { render :show, status: :ok, location: @department }
      else
        format.html { render :edit }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy
    @department.destroy
    respond_to do |format|
      format.html { redirect_to departments_url, notice: 'Department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:name, :company_id)
    end
end
