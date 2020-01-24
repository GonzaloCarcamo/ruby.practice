require 'uri'
require 'net/http'
require 'json'
require 'openssl'
require_relative 'build_web_page'

def get_data(url)

url = URI(url)
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
request = Net::HTTP::Get.new(url)
response = http.request(request)
JSON.parse(response.read_body)
end

clean_data = get_data ("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&page=2&api_key=4jChFivFN867WUN3t7wDbVdpb3nLWNrbfCDY2u3O")

File.open('index.html','w') do |f|
    f.puts head
    clean_data['photos'].each do |info|
        f.puts "             <li><img src= '#{info['img_src']}' alt= '#{info['earth_date']}'></li>"
        f.puts "<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>"
    end
    f.puts body
end

clean_data['photos'].each do |a|   
    a.each do |b,c|
        puts "#{c['cameras']}" if "#{b}" == "rover"   
        end
    end
  