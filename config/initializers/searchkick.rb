if ENV['ELASTICSEARCH_HOST']
  ENV['ELASTICSEARCH_URL'] ||= "http://#{ENV['ELASTICSEARCH_HOST']}:9200"
end

Searchkick.client_options = {
  url: 'http://elasticsearch:9200',
  retry_on_failure: true,
  transport_options:
    { request: { timeout: 250 } }
 }