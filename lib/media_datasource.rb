require 'yaml'
require 'net/http'

class MediaDatasource < Nanoc::DataSource
  identifier :media
  
  def items
    list = config[:items]
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
