# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Cities', type: :request do
  describe 'GET /index' do
    let!(:cities) { create_pair(:city) }

    let(:params) { {} }

    let(:response_ids) { JSON.parse(response.body).map { |city| city['id'] }.sort }

    let(:headers) { { 'ACCEPT': 'application/json' } }

    before { get cities_url, headers: headers, params: params }

    it 'has response code 200' do
      expect(response.status).to eq(200)
    end

    it 'returns all cities' do
      expect(response_ids).to eq(City.ids.sort)
    end

    context 'when filtering by state' do
      let(:sc) { create(:state, name: 'Santa Catarina') }
      let(:pr) { create(:state, name: 'Paraná') }

      let!(:pr_city) { create(:city, state: pr) }
      let!(:sc_city) { create(:city, name: 'Joinville', state: sc) }

      let(:params) { { state: 'Paraná' } }

      it 'returns cities of the state from parameter' do
        get cities_url, headers: headers, params: params
        expect(response_ids).to include(pr_city.id)
        expect(response_ids).not_to include(sc_city.id)
      end
    end
  end
end
