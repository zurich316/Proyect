class CommentsController < ApplicationController
  def create
    @comment = Comments.new(comment_params)
    if @comment.save
      redirect_to "/posts/"+@comment.post.id.to_s, notice: "Comentario creada exitosamente"
    else
      redirect_to "/posts/"+@comment.post.id.to_s, notice: "Error al crear Comentario"
    end
  end

  def comment_params
    params.require(:comment).permit(:contenido, :post_id)
  end
end
