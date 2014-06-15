usage       'generate_pdf'
aliases     :pdf
summary     'makes a pdf version of the latest html'
description 'takes the actual html site and generates a downloadable pdf'

run do |opts, args, cmd|

  require 'PDFKit'
  require 'pry'

  html = File.new( "../rgalindo33.github.io/index.html" ).read
  kit = ::PDFKit.new( html, :page_size => 'letter' )
  kit.stylesheets << '../rgalindo33.github.io/stylesheet.css'

  file = kit.to_file( "../rgalindo33.github.io/raul_galindo_resume.pdf" )

end
