# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GET /', type: :request do
  context 'when going to delivery page' do
    before do
      host! "#{ENV.fetch("HOST")}/delivery"
      get root_path
    end

    it 'returns 200 status' do
      expect(response).to have_http_status(:ok)
    end
  end
end
