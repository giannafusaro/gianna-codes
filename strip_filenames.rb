filenames = Dir['*']
filenames.each do |filename|
  f = File.open filename
  File.rename(f, "./" + filename.gsub(/\..*/, ''))
  # File.rename(f, "./" + filename.gsub(/\..*/, '') + File.extname(f))
  # File.rename(f, "./" + filename.gsub("circ-", ''))
end
File.rename(f, "./" + filename.gsub(/ /, '-') + File.extname(f))
