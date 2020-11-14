# frozen_string_literal: true

require 'pry'
require 'csv'
require 'net/http'

require_relative 'services/csv_parse.rb'
require_relative 'services/websites_availability_check.rb'
require_relative 'errors/empty_input_csv_error.rb'
require_relative 'errors/wrong_input_csv_error.rb'
