# frozen_string_literal: true

class WrongInputCsvError < StandardError
  def message
    'The CSV file has incorrect structure'
  end
end
