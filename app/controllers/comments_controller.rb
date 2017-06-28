class CommentsController < ApplicationController



def index
	@comments = Comentario.all
end

def show
	@comment = Comentario.find(params[:id])
end 

def new
    @comment = Comentario.new
end

def create
  @comment = Comentario.new(comentario_params)
   if @comment.save
    redirect_to comments_path
  else
    render 'new'
  end
end
 

def edit
  @comment = Comentario.find(params[:id])
end

def update
  @comment = Comentario.find(params[:id])

  if @comment.update_attributes(comentario_params)
       redirect_to comments_path
  else
    render :edit
  end
end


def destroy
   @comment = Comentario.find(params[:id])
   @comment.destroy
   redirect_to comments_path
end


private
def comentario_params
  params.require(:commentario).permit(:name, :comment)
end  



end
