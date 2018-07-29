require "open-uri"
require "nokogiri"

class ProgramathorScraping
  def initialize(skill, page="1")
    html = open("https://programathor.com.br/jobs-" + URI.escape(skill) + "?page=#{page.to_s}")
    @doc = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)  
  end

  def jobs
    @doc
  end
end