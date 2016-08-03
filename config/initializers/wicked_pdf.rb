# if Rails.env.production?
# wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-amd64"
# else
# wkhtmltopdf_path = "/usr/local/bin/wkhtmltopdf"
# end
# 
# WickedPdf.config = { exe_path: wkhtmltopdf_path, wkhtmltopdf: wkhtmltopdf_path }
# 


if defined?(WickedPdf)

WickedPdf.config = {
    :exe_path => '/bin/wkhtmltopdf-amd64'
}
end

