# frozen_string_literal: true

class EmptyInputCsvError < StandardError
  def message
    'Nothing to check, please add any website'
  end
end
