class InComing < ActiveRecord::Base
  
  default_scope { order('in_comings.created_at DESC') } 
 
  serialize :params
  
 
 after_create :update_stat
 
 def self.current(hidden_ids = nil)
   result = where("created_at >= ?", 5.week.ago.utc).order("created_at DESC")
  # result = result.where("starts_at <= :now and ends_at >= :now", now: Time.zone.now)
  # result = result.where("id not in (?)", hidden_ids) if hidden_ids.present?
   result
 end
 
 def self.latest_data
   result = order("created_at DESC").first
  # result = result.where("starts_at <= :now and ends_at >= :now", now: Time.zone.now)
  # result = result.where("id not in (?)", hidden_ids) if hidden_ids.present?
   result
 end
 

 private


 def update_stat 
  #   StatHat::API.ez_post_value('House Temp', 'chrismayu@gmail.com', self.ambient_temp.to_f)
  #   StatHat::API.ez_post_value('Tank Temp', 'chrismayu@gmail.com', self.temp.to_f)      
  #  StatHat::API.ez_post_value('HeartBeat', 'chrismayu@gmail.com', self.id)  
    

end   

 
 
 
 
 
 
 
 
 
 
 
 
 
end
