require "open-uri"
require "nokogiri"

class ProgramathorScraping
  def initialize(skill, page="1")
    html = open("https://programathor.com.br/jobs-" + URI.escape(skill) + "?page=#{page.to_s}")
    @doc = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)  
  end

  def jobs
    list = []
    @doc.css(".cell-list").each do |job|
      job_url = job.xpath("a").first["href"]
      title = job.css(".cell-list-content h3").text
      image_url = job.css(".cell-logo img").first["src"]
      company = job.css(".cell-list-content-icon span")[0].text
      locale = job.css(".cell-list-content-icon span")[1].text
      list.push(job_url: job_url, title: title, image_url: image_url, company: company, locale: locale)
    end 
    return list
  end
end