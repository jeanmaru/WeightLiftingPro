class ReportsController < ApplicationController
  def download_pdf
    html = render_to_string(:action => '/exercise_entry_month')
    pdf = WickedPdf.new.pdf_from_string(html)

    send_data(pdf,
              :layout => 'pdf.html.erb',
              :filename => "My_Monthly_Exercise_Report.pdf",
              :page_size => 'Letter',
              :margin => {
                  :top      => '0.5in',
                  :bottom   => '1in',
                  :left     => '0in',
                  :right    => '0in'
              },
              :disposition => 'attachment')

  end

end