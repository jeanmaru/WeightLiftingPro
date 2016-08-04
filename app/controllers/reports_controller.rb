class ReportsController < ApplicationController



  def download_monthly_pdf
    html = render_to_string(:action => '/generate_monthly_report_pdf.pdf.erb')
    pdf = WickedPdf.new.pdf_from_string(html)

    send_data(pdf,
              :layout => 'pdf.html.erb',
              :filename => "My_Monthly_Exercise_Report.pdf",
              :page_size => 'Letter',
              :disposition => 'attachment')

  end

  def download_weekly_pdf
    html = render_to_string(:action => '/generate_weekly_report_pdf.pdf.erb')
    pdf = WickedPdf.new.pdf_from_string(html)

    send_data(pdf,
              :layout => 'pdf.html.erb',
              :filename => "My_Weekly_Exercise_Report.pdf",
              :page_size => 'Letter',
              :disposition => 'attachment')

  end

  def download_last_pdf
    html = render_to_string(:action => 'reports/generate_last_report_pdf.pdf.erb')
    pdf = WickedPdf.new.pdf_from_string(html)

    send_data(pdf,
              :layout => 'pdf.html.erb',
              :filename => "My_Last_Exercise_Report.pdf",
              :page_size => 'Letter',
              :disposition => 'attachment')
  end
    

end