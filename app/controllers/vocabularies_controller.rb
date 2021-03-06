class VocabulariesController < ApplicationController
  before_action :set_vocabulary, only: [:show, :edit, :update, :destroy]

  # GET /vocabularies
  # GET /vocabularies.json
  def index
    @vocabularies = Vocabulary.all
  end

  # GET /vocabularies/1
  # GET /vocabularies/1.json
  def show
  end

  # GET /vocabularies/new
  def new
    @vocabulary = Vocabulary.new
  end

  # GET /vocabularies/1/edit
  def edit
  end

  # POST /vocabularies
  # POST /vocabularies.json
  def create
    @vocabulary = Vocabulary.new(vocabulary_params)

    respond_to do |format|
      if @vocabulary.save
        format.html { redirect_to @vocabulary, notice: 'Vocabulary was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vocabulary }
      else
        format.html { render action: 'new' }
        format.json { render json: @vocabulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vocabularies/1
  # PATCH/PUT /vocabularies/1.json
  def update
    respond_to do |format|
      if @vocabulary.update(vocabulary_params)
        format.html { redirect_to @vocabulary, notice: 'Vocabulary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vocabulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vocabularies/1
  # DELETE /vocabularies/1.json
  def destroy
    @vocabulary.destroy
    respond_to do |format|
      format.html { redirect_to vocabularies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vocabulary
      @vocabulary = Vocabulary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vocabulary_params
      params.require(:vocabulary).permit(:word, :translated, :definition, :pronunciation, :image)
    end
end
