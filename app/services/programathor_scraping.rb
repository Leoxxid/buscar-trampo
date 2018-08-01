require "open-uri"
require "nokogiri"

class ProgramathorScraping
  def initialize(skill, page="1")
    @doc = parsed_template("https://programathor.com.br/jobs-#{skill.downcase.gsub(" ", "-")}?page=#{page.to_s}")
  end

  def jobs
    list = []
    @doc.css(".cell-list").each do |job|
      job_url = "https://programathor.com.br/" + job.xpath("a").first["href"]
      title = job.css(".cell-list-content h3").text
      image_url = job.css(".cell-logo img").first["src"]
      company = job.css(".cell-list-content-icon span")[0].text
      locale = job.css(".cell-list-content-icon span")[1].text
      description = description(job_url)
      list.push(job_url: job_url, title: title, image_url: image_url, company: company, locale: locale, description: description)
    end 
    return list
  end

  private

    def description(job_url)
      doc = parsed_template(job_url)
      return doc.css(".wrapper-content-job-show div")[4].text.strip.delete("\n")
    end
    
    def parsed_template(url)
      return Nokogiri::HTML(open(url), nil, Encoding::UTF_8.to_s)
    end
end