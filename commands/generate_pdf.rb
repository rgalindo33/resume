usage       'generate_pdf'
aliases     :pdf
summary     'makes a pdf version of the latest html'
description 'takes the actual html site and generates a downloadable pdf'

run do |opts, args, cmd|

  require 'PDFKit'
  require 'pry'

  html = File.new( "output/index.html" ).read
  kit = ::PDFKit.new( html, :page_size => 'letter' )
  kit.stylesheets << 'output/stylesheet.css'

  file = kit.to_file( "output/raul_galindo_resume.pdf" )

end
