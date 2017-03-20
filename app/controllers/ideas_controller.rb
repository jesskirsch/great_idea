class IdeasController < ApplicationController

  before_action :authorize

  def index
    @ideas = Idea.all
  end

  def great
    @great_ideas = Idea.where(category: "great")
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def edit
    @idea = Idea.find(params[:id])

    # if @idea.update(idea_params)
    #   redirect_to @idea
    # else
    #   render 'edit'
    # end
  end


  def create
    @idea = current_user.ideas.new(idea_params)

    if @idea.save
      redirect_to @idea
    else
      render 'new'
    end
  end

  def update
    @idea = Idea.find(params[:id])

    if @idea.update(idea_params)
      redirect_to @idea
    else
      render 'edit'
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy

    redirect_to ideas_path
  end

  private
    def idea_params
      params.require(:idea).permit(:title, :text)
    end

end
