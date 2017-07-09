class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag.destroy
    flash.notice = "Tag '#{@tag.name}' deleted!"
    redirect_to tag_path
  end
end
