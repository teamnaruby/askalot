require 'securerandom'

module StackOverflow
  class Processor
    class UsersDocument < Nokogiri::XML::SAX::Document
      def start_document
        puts '[Users] Start processing'
        @users = []
        @count = 0
      end

      def end_document
        User.import @users, :validate => false, :timestamps => false
        puts '[Users] End processing'
      end

      def start_element name, attributes = []
        if name == 'row'
          user = Hash.new
          attributes.each do |attribute|
            user[attribute[0]] = attribute[1]
          end

          if user['Id'] == '-1'
            return
          end

          @count += 1
          puts '[Users] Processing ' + @count.to_s + '. user with ID: ' + user['Id']

          user = User.new(
            login: 'user_' + user['Id'],
            email: SecureRandom.hex + '@stackoverflow.com',
            name: user['DisplayName'],
            created_at: user['CreationDate'],
            updated_at: user['CreationDate'],
            last_sign_in_at: user['LastAccessDate'],
            about: ActionView::Base.full_sanitizer.sanitize(user['AboutMe']),
            imported_id: user['Id']
          )
          user.skip_confirmation!
          @users << user

          if @users.count >= 10000
            User.import @users, :validate => false, :timestamps => false
            @users = []
          end
        end
      end
    end
  end
end