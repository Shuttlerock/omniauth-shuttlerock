require 'spec_helper'

describe OmniAuth::Strategies::ShuttlerockOauth2 do
  subject do
    OmniAuth::Strategies::ShuttlerockOauth2.new({})
  end

  context "client options" do
    it 'should have correct name' do
      expect(subject.options.name).to eq('shuttlerock_oauth2')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://login.shuttlerock.com')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('/oauth/authorize')
    end
  end
end
