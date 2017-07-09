require 'pry'
class TagsController < ApplicationController


  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
  
  def destroy
    binding.pry
    @tag.destroy
    flash.notice = "Tag '#{@tag.name}' deleted!"
    redirect_to tag_path
  end
end
