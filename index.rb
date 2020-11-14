# frozen_string_literal: true

require_relative 'autoload.rb'

websites_to_check = CsvParse.call
checked_websites = WebsitesAvailabilityCheck.call(websites: websites_to_check)

puts checked_websites.join(', ')
