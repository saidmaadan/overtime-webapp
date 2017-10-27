namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # 1. Scedule to run on Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip admin_users
    # 4. Send a message that has instructions and a link to log time
    ##5. Phone format
      #  No spaces or dashes
      # exactly 10 characters
      # all characters have to be a number

    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
  end

end
