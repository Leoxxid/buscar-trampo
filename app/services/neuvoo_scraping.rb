require "open-uri"
require "nokogiri"

class NeuvooScraping
  def initialize(skill, page="1")
    @doc = parsed_template("https://neuvoo.com.br/empregos/?k=#{skill.downcase.gsub(" ", "+")}&l=&f=&o=&p=#{page.to_s}&r=15")
  end

  def jobs
    list = []
    @doc.css(".job-c").each do |job|
      job_url = "https://neuvoo.com.br" + job.css(".j-title a").first["href"]
      title = job.css(".j-title h2").text
      image_url = "https://neuvoo.com.br" + job.css(".j-logo").first["src"]
      company = job.css(".j-empname").text
      locale = job.css(".j-location").text
      # description = description(job_url)
      list.push(job_url: job_url, title: title, image_url: image_url, company: company, locale: locale)
    end 
    return list
  end

  private

    def description(job_url)
      doc = parsed_template(job_url)
      return doc.css(".view-job-description").text.strip.delete("\n")
    end
    
    def parsed_template(url)
      return Nokogiri::HTML(open(url), nil, Encoding::UTF_8.to_s)
    end
end