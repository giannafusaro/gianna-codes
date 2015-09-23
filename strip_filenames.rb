filenames = Dir['*']
filenames.each do |filename|
  f = File.open filename
  File.rename(f, "./" + filename.gsub(/\..*/, '') + File.extname(f))
end
# File.rename(f, "./" + filename.gsub(/ /, '-') + File.extname(f))
