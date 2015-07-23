require 'spec_helper'

describe OmniAuth::Strategies::ShuttlerockOauth2 do
  subject do
    OmniAuth::Strategies::ShuttlerockOauth2.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq('shuttlerock_oauth2')
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('http://gatekeeper.dev')
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('/oauth/authorize')
    end
  end
end
