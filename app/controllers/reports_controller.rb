class ReportsController < ApplicationController
  def download_pdf
    html = render_to_string(:action => '/exercise_entry_month')
    kit = PDFKit.new(html, :page_size => 'Letter')
    # file = kit.to_file('/downloads')



    # Get an inline PDF
#     pdf = kit.to_pdf

    # send_data(kit.to_pdf)
  end

  # def show
  #   @report = Report.find(params[:id])
  # 
  #   kit       = PDFKit.new render_to_string(@report) # pass any options that the
  #   pdf_file  = kit.to_file '/some/file/path.pdf'    # renderer needs here (same
  #   # options as `render`).
  #   # and if you still want to send it to the browser...
  #   respond_to do |format|
  #     format.pdf { render :file => pdf_file.path }
  #   end
  # end

#   kit = PDFKit.new(html, :page_size => 'Letter')
#   kit.stylesheets << '/path/to/css/file'
# 
# 
# 
# # Save the PDF to a file
#   file = kit.to_file('/path/to/save/pdf')
#   save_to_file:                   Rails.root.join('pdfs', "#{filename}.pdf"),
  
end