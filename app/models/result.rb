class Result < ActiveRecord::Base

  def prediction
    return unless self.identifier
    me = FbGraph::User.me(Facebook.find_by(identifier: self.identifier).access_token).fetch
    self.profile_score = Arsenal.predict(me.inspect.downcase)
    self.post_score = Arsenal.predict(me.posts.inspect.downcase)
    self.feed_score = Arsenal.predict(me.feed.inspect.downcase)
    self.save
    self
  end
end
