class SearchController < ApplicationController
  require 'media_wiki'
  require 'wikipedia'
  before_action :find_term

  def index
  end

  def download_pdf
  	pdf = WickedPdf.new.pdf_from_string(@page) 
     send_data(pdf, 
         :filename    => "#{@result.title}.pdf", 
         :disposition => 'attachment') 
 
    # pdf = render_to_string :pdf=>'search/download_pdf.pdf.erb',:margin => {:top=> 20,
    #                 :bottom => 10,
    #                 :left=> 10,
    #                 :right => 10},
    #                 :orientation => 'Landscape',
    #                 :page_size=>'A4',
    #                 :type=>"application/pdf",
    #                 filename: "search/download_pdf.pdf.erb"
    # send_file pdf

  end

  private

  def find_term
  	@result = Wikipedia.find( params[:term])
  	@page = Wikitext::Parser.new.parse(@result.content)
  end
end
