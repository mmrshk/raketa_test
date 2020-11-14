# frozen_string_literal: true

class CsvParse
  CSV_HEADER = ['URL'].freeze

  def self.call
    new.call
  end

  def call
    return websites_to_check if csv.first == CSV_HEADER && websites_to_check.any?

    websites_to_check.empty? ? raise(EmptyInputCsvError) : raise(WrongInputCsvError)
  end

  private

  def websites_to_check
    @websites_to_check ||= csv[1..-1].flatten
  end

  def csv
    @csv ||= CSV.read('./database/websites_to_check.csv')
  end
end
