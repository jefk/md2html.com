class DocsController < ApplicationController
  def create
    doc = Doc.create doc_params
    redirect_to action: :show, id: doc.slug
  end

  def show
    render :show, locals: { doc: Doc.find_by(slug: params[:id]) }
  end

  private

  def doc_params
    params.require(:doc).permit(:slug, :content)
  end
end
