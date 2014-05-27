class Arsenal < Settingslogic
  source "#{Rails.root}/config/arsenal.yml"
  namespace Rails.env

  def all_keys
    Arsenal.players.values.map{|v| v.values}.flatten.uniq.compact + self.keywords + self.clubs
  end

  def predict(str)
    self.all_keys.map{|keyword| str.scan(keyword).count }.sum
  end
end
