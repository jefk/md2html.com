class DocsController < ApplicationController
  def create
    doc = Doc.new doc_params
    if doc.save
      redirect_to action: :show, id: doc.slug
    else
      redirect_to :root, alert: doc.errors.full_messages
    end
  end

  def show
    render :show, locals: { doc: Doc.find_by(slug: params[:id]) }
  end

  private

  def doc_params
    params.require(:doc).permit(:slug, :content)
  end
end
