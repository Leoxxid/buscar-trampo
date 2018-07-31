Tag.create(name: "Ruby on Rails")
Tag.create(name: "Python")
Tag.create(name: "Java")
Tag.create(name: "Angular")
Tag.create(name: "React")

20.times do
  Job.create(
    image_url: FFaker::Image.url,
    title: FFaker::JobBR.title,
    company: FFaker::Company.name,
    description: FFaker::HipsterIpsum.paragraphs,
    locale: FFaker::AddressBR.city,
    job_url: FFaker::InternetSE.http_url,
    tag: Tag.all.sample
  )
end