require 'stripe_mock'

describe 'Stripe API' do
  before { StripeMock.start }
  after { StripeMock.stop }

  it "creates a stripe customer" do

    # This doesn't touch stripe's servers nor the internet!
    customer = Stripe::Customer.create({
                                           email: 'joe@example.com',
                                           card: 'void_card_token'
                                       })
    expect(customer.email).to eq('joe@example.com')
  end

  it "mocks a declined card error" do
    # Prepares an error for the next create charge request
    StripeMock.prepare_card_error(:card_declined)

    expect { Stripe::Charge.create }.to raise_error {|e|
      expect(e).to be_a Stripe::CardError
      expect(e.http_status).to eq(402)
      expect(e.code).to eq('card_declined')
    }
  end

  it "raises a custom error for specific actions" do
    custom_error = StandardError.new("Please knock first.")

    StripeMock.prepare_error(custom_error, :new_customer)

    expect { Stripe::Charge.create }.to_not raise_error
    expect { Stripe::Customer.create }.to raise_error {|e|
      expect(e).to be_a StandardError
      expect(e.message).to eq("Please knock first.")
    }
  end

  it "mocks a stripe webhook" do
    event = StripeMock.mock_webhook_event('customer.created')

    customer_object = event.data.object
    expect(customer_object.id).to_not be_nil
    expect(customer_object.default_card).to_not be_nil
    # etc.
  end

  it "generates a stripe card token" do
    card_token = StripeMock.generate_card_token(last4: "9191", exp_year: 1984)

    cus = Stripe::Customer.create(card: card_token)
    card = cus.cards.data.first
    expect(card.last4).to eq("9191")
    expect(card.exp_year).to eq(1984)
  end

end