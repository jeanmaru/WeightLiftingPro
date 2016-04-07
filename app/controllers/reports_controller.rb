class ReportsController < ApplicationController
  def download_pdf
    html = render_to_string(:action => 'reports/exercise_entry_month')
    kit = PDFKit.new(html, :page_size => 'Letter')
    
    
# Get an inline PDF
#     pdf = kit.to_pdf

    # send_data(kit.to_pdf)
  end

#   kit = PDFKit.new(html, :page_size => 'Letter')
#   kit.stylesheets << '/path/to/css/file'
# 
# 
# 
# # Save the PDF to a file
#   file = kit.to_file('/path/to/save/pdf')
#   save_to_file:                   Rails.root.join('pdfs', "#{filename}.pdf"),
  
end