# frozen_string_literal: true

class InterfaceApi
  API_KEY = ENV.fetch("API_KEY")
  API_URL = ENV.fetch("API_URL")

  def get_status(document_number, phone)
    conn = Faraday.new(
      url: API_URL,
      headers: { 'Content-Type' => 'application/json' }
    )
    res = conn.post('/v2.0/json/') do |req|
      req.body = {
        "apiKey": API_KEY,
        "modelName": "TrackingDocument",
        "calledMethod": "getStatusDocuments",
        "methodProperties": {
          "Documents": [
            {
              "DocumentNumber": document_number,
              "Phone": phone
            }]
        }
      }.to_json
    end
    res.body[:message] || res.body[:error]
  end
  # **/
end
