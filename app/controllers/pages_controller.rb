class PagesController < ApplicationController
  def index
    @pages = Page.order('position ASC');
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(pages_params)

    if @page.save
      redirect_to(pages_path)
    else
      render(:new)
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update(pages_params)
      redirect_to(page_path(@page))
    else
      render(:edit)
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])

    @page.destroy

    redirect_to(pages_path)
  end

  private

  def pages_params
    params.require(:page).permit(:name, :position, :permalink, :visible, :context, :subject_id)
  end
end
