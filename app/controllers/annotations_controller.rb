class AnnotationsController < ApplicationController
  before_action :set_annotation, only: [:show, :edit, :update, :destroy]
  before_action :load_submission
  # GET /annotations
  def index
    @annotations = @submission.annotations.all
  end

  # GET /annotations/1
  def show
  end

  # GET /annotations/new
  def new
    @annotation = @submission.annotations.build
  end

  # GET /annotations/1/edit
  def edit
  end

  # POST /annotations
  def create
    @annotation = @submission.annotations.new(annotation_params)

    if @annotation.save
      redirect_to submission_annotations_path(@submission), notice: 'Annotation was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annotations/1
  def update
    if @annotation.update(annotation_params)
      redirect_to @annotation, notice: 'Annotation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annotations/1
  def destroy
    @annotation.destroy
    redirect_to submission_annotations_url(@submission), notice: 'Annotation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annotation
      @annotation = Annotation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annotation_params
      params.require(:annotation).permit(:mark, :sketch, :submission_id, :comment)
    end

    def load_submission
      @submission = Submission.find(params[:submission_id])
    end
end
