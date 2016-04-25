require 'twilio_api'

describe TwilioAPI do
   subject(:twilio) { described_class.new }
   it { is_expected.to respond_to(:send).with(1).argument }
end