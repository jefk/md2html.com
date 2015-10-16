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
    doc = Doc.find_by slug: params[:id]
    redirect_to :root and return unless doc
    render html: markdown.render(doc.content).html_safe, layout: 'application'
  end

  private

  def doc_params
    params.require(:doc).permit(:slug, :content)
  end

  def markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(filter_html: true))
  end
end
