# A sample Guardfile
# More info at https://github.com/guard/guard#readme

notification :libnotify, timeout: 5, transient: true, append: false
interactor :off

guard 'nanoc' do
  watch('nanoc.yaml') # Change this to config.yaml if you use the old config file name
  watch('Rules')
  watch(%r{^(content|layouts|lib)/.*$})
end
