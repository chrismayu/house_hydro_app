class InComing < ActiveRecord::Base
  
  default_scope { order('in_comings.created_at DESC') } 
 
  serialize :params
  
 
 after_create :update_stat
 
 
 

 private


 def update_stat 
  #   StatHat::API.ez_post_value('House Temp', 'chrismayu@gmail.com', self.ambient_temp.to_f)
  #   StatHat::API.ez_post_value('Tank Temp', 'chrismayu@gmail.com', self.temp.to_f)      
  #  StatHat::API.ez_post_value('HeartBeat', 'chrismayu@gmail.com', self.id)  
    

end   

 
 
 
 
 
 
 
 
 
 
 
 
 
end
