class ReportsController < ApplicationController
  def download_pdf
    html = render_to_string(:action => '/exercise_entry_month')
    pdf = WickedPdf.new.pdf_from_string(html)

    send_data(pdf,
              :filename => "My_Monthly_Exercise_Report.pdf",
              :disposition => 'attachment')

  end

end