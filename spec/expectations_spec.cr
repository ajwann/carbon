require "./spec_helper"

include Carbon::Expectations

describe Carbon::Expectations do
  it "can check for delivered emails" do
    adapter = Carbon::DevAdapter.new
    email = FakeEmail.new(subject: "Sent email")
    email.should_not be_delivered

    adapter.deliver_now(email)

    email.should be_delivered
  end
end
