require 'yaml'
require 'net/http'

class RemoteDatasource < Nanoc::DataSource
  identifier :video
  
  def items
    list = config[:videos]
    list.map do |video|
      id = video[:id]
      filename = get_video id, video[:url]
      item = Nanoc::Item.new filename, {}, id, binary: true      
    end 
  end

  def get_video identifier, url
    filename =  "#{Dir.pwd}/tmp/#{File::basename(identifier)}"
    File.open filename, 'w' do |file|
      file.write Net::HTTP.get_response(URI(url)).body
    end
    filename
  end

  def layouts
    []
  end
end
