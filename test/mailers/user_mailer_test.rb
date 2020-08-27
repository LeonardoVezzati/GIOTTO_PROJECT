require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "invitation" do
    mail = UserMailer.invitation
    assert_equal "Invitation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end


  def invitation
    mail(
      subject: 'Hello from Giotto',
      to: 'sender@example.org',
      from: 'Hello@giotto.org',
      html_body: '<strong>Hello</strong> dear Giotto user.',
      track_opens: 'true',
      message_stream: 'outbound')
  end

end
