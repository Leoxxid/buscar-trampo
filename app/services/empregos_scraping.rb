require "open-uri"
require "nokogiri"

class EmpregosScraping
  def initialize(skill, page="1")
    @doc = parsed_template("https://www.empregos.com.br/vagas/p#{page.to_s}/#{skill.downcase.gsub(" ", "-")}")
  end
  
    def jobs
      list = []
      @doc.css(".col-esquerda").each do |job|
        job_url = job.css(".descricao a").first["href"]
        title = job.css(".descricao a").first.text.strip.delete("\n")
        image_url = job.css(".grid-16-16").first.xpath("img").first["src"]
        company = job.css(".descricao .nome-empresa").text.strip.delete("\n")
        locale = job.css(".descricao .cidade-estado").text.strip.delete("\n")
        description = description(job_url)
        list.push(job_url: job_url, title: title, image_url: image_url, company: company, locale: locale, description: description)
      end 
      return list
    end
  
    private
  
      def description(job_url)
        doc = parsed_template(job_url)
        return doc.css(".conteudo-vaga td > p").text.strip.delete("\n").delete("\r")
      end
      
      def parsed_template(url)
        return Nokogiri::HTML(open(url), nil, Encoding::UTF_8.to_s)
      end
end