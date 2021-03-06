module University::Mailers
  class UserMailerService
    def self.users
      Shared::User.where(send_email_notifications: true)
    end

    def self.deliver_notifications!
      users.joins(:notifications).where('notifications.created_at >= ?', 1.day.ago).uniq.find_each.map { |user|
        University::UserMailer.notifications(user)
      }.map(&:deliver_now!)
    end
  end
end
