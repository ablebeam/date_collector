json.array!(@date_tests) do |date_test|
  json.extract! date_test, :id, :name, :expected
  json.url date_test_url(date_test, format: :json)
end
