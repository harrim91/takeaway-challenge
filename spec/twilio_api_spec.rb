require 'twilio_api'

describe TwilioAPI do
  let(:client) { double(:client) }
  subject(:twilio) { described_class.new client }

  it { is_expected.to respond_to(:send).with(1).argument }
end