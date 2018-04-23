filename = ARGV.first
pattern = filename.gsub('../', '').gsub('.ltx.in', '')

text = File.read(filename)

text.gsub!('\subsection', '\subsubsection')
text.gsub!(/\\section{([^}]*)}/, '\subsection{\1}' + "\n" + '\label{' + pattern + '}')

text.gsub!(/\\href{(https?:[^}]*)}{([^}]*)}/m, '\2\footnote{\1}')
text.gsub!(/\\href{link?:\/\/([^}]*)}{([^}]*)}/m, '\emph{\2} (Section~\ref{\1})')

text.gsub!('_', '\_')

#| sed -e 's#<FILENAME>#$<#g; s#\.ltx\.in##g; s#\.\./##' 
puts text
