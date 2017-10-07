require 'rails_helper'

describe AuthTokenService do
  context '#encode' do
    describe 'should encode token' do
      it 'should generate auth token' do
        payload = { user_id: "hello world" }
        token = JWT.encode(payload, Rails.application.secrets.secret_key_base)
        expect(JWT.encode(payload, Rails.application.secrets.secret_key_base)).to eql(token)
      end
    end
  end

  context '#decode' do
    describe 'should decode token' do
      it 'should generate auth token' do
        payload = { user_id: "hello world" }
        token = JWT.encode(payload, Rails.application.secrets.secret_key_base)
        decode_payload = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
        expect(decode_payload["user_id"]).to eql(payload[:user_id])
      end
    end
  end
end
