class ReportsController < ApplicationController
  def download_pdf
    html = render_to_string(:action => '/generate_monthly_report_pdf.pdf.erb')
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
              :template => '/generate_monthly_report_pdf.pdf.erb',
              :disposition => 'attachment')

  end

end