class DiagnosesController < ApplicationController
  before_action :set_diagnosis, only: [:show, :update, :destroy]

  # GET /diagnoses
  # GET /diagnoses.json
  def index
    @patient = Patient.find params[:patient_id]
    @diagnoses = @patient.diagnoses
  end

  # GET /diagnoses/1
  # GET /diagnoses/1.json
  def show
    @patient = Patient.find params[:patient_id]
  end

  # GET /diagnoses/new
  def new
    @patient = Patient.find params[:patient_id]
    @diagnosis = @patient.diagnoses.build(attributes={diagnostico_y_tratamiento: TEXTO_ANAMNESIS})
  end

  # GET /diagnoses/1/edit
  def edit
    @patient = Patient.find params[:patient_id]
    @diagnosis = Diagnosis.find params[:id]
  end

  # POST /diagnoses
  # POST /diagnoses.json
  def create
    @patient = Patient.find params[:patient_id]
    @diagnosis = Diagnosis.new(diagnosis_params)
    @patient.diagnoses << @diagnosis

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patient_diagnosis_path(@patient, @diagnosis), notice: 'Diagnosis was successfully created.' }
        format.json { render :show, status: :created, location: @diagnosis }
      else
        format.html { render :new }
        format.json { render json: @diagnosis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnoses/1
  # PATCH/PUT /diagnoses/1.json
  def update
    @patient = Patient.find params[:patient_id]
    respond_to do |format|
      if @diagnosis.update(diagnosis_params)
        format.html { redirect_to patient_diagnosis_path(@patient, @diagnosis), notice: 'Diagnosis was successfully updated.' }
        format.json { render :show, status: :ok, location: @diagnosis }
      else
        format.html { render :edit }
        format.json { render json: @diagnosis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnoses/1
  # DELETE /diagnoses/1.json
  def destroy
    @patient = Patient.find params[:patient_id]
    @diagnosis.destroy
    respond_to do |format|
      format.html { redirect_to patient_diagnoses_path(@patient), notice: 'Diagnosis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosis
      @diagnosis = Diagnosis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnosis_params
      params.require(:diagnosis).permit(:diagnostico_y_tratamiento, :patient_id)
    end
end
