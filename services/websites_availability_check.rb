# frozen_string_literal: true

class WebsitesAvailabilityCheck
  AVAILABILITY_STATUSES = (200..299).freeze

  def self.call(**kwargs)
    new.call(**kwargs)
  end

  def call(websites: [])
    websites.each.map do |website|
      http = Net::HTTP.new(website, 80)
      response = http.request_get('/')

      "#{website} - #{AVAILABILITY_STATUSES.include?(response.code.to_i)}"
    end
  end
end
