require 'multi_json'
require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class ShuttlerockOauth2 < OmniAuth::Strategies::OAuth2
      option :name, 'shuttlerock_oauth2'

      option :client_options, {
        site:              'http://gatekeeper.dev',
        request_token_url: '/oauth/request_token',
        authorize_url:     '/oauth/authorize',
        token_url:         '/oauth/token',
      }

      uid { raw_info['uid'] }

      info do
        {
          role: raw_info['role'],
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/api/v1/me').body)
      end
    end
  end
end
