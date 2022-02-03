class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    # instantiate a new object using form parameters
    @subject = Subject.new(subject_params)

    # try and save the subject
    if @subject.save
      # if the save succeeds, redirect to the index action
      redirect_to(subjects_path)
    else
      # if save fails, redisplay the form to user.
      render(:new)
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :visiblle, :position)
  end
end
