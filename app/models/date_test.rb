class DateTest < ActiveRecord::Base
  def ready?
    result = expected =~ /,/ ? expected.split(',').map(&:strip) : expected
    HumanDateRange.parse(name) == result
  end
end
