class Comment < ActiveRecord::Base
  belongs_to :post
  before_create :send_pusher

  private
    def send_pusher
      Pusher['comments_channel'].trigger('new_comment', self.to_json)
    end
end
