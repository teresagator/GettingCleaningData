CodeBook

activity - contains name of activity performed during session.  
   WALKING
   WALKING_UPSTAIRS
   WALKING_DOWNSTAIRS
   SITTING
   STANDING
   LAYING

subject - contains subject identifier of test subject.
   Integer value, 1-30

Columns 3:88 contain the average measurement for 85 different measurements
  Floating point values
 tbodyaccmeanx                     tbodyaccmeany                    
 tbodyaccmeanz                     tbodyaccstdx                     
 tbodyaccstdy                      tbodyaccstdz                     
 tgravityaccmeanx                  tgravityaccmeany                 
 tgravityaccmeanz                  tgravityaccstdx                  
 tgravityaccstdy                   tgravityaccstdz                  
 tbodyaccjerkmeanx                 tbodyaccjerkmeany                
 tbodyaccjerkmeanz                 tbodyaccjerkstdx                 
 tbodyaccjerkstdy                  tbodyaccjerkstdz                 
 tbodygyromeanx                    tbodygyromeany                   
 tbodygyromeanz                    tbodygyrostdx                    
 tbodygyrostdy                     tbodygyrostdz                    
 tbodygyrojerkmeanx                tbodygyrojerkmeany               
 tbodygyrojerkmeanz                tbodygyrojerkstdx                
 tbodygyrojerkstdy                 tbodygyrojerkstdz                
 tbodyaccmagmean                   tbodyaccmagstd                   
 tgravityaccmagmean                tgravityaccmagstd                
 tbodyaccjerkmagmean               tbodyaccjerkmagstd               
 tbodygyromagmean                  tbodygyromagstd                  
 tbodygyrojerkmagmean              tbodygyrojerkmagstd              
 fbodyaccmeanx                     fbodyaccmeany                    
 fbodyaccmeanz                     fbodyaccstdx                     
 fbodyaccstdy                      fbodyaccstdz                     
 fbodyaccmeanfreqx                 fbodyaccmeanfreqy                
 fbodyaccmeanfreqz                 fbodyaccjerkmeanx                
 fbodyaccjerkmeany                 fbodyaccjerkmeanz                
 fbodyaccjerkstdx                  fbodyaccjerkstdy                 
 fbodyaccjerkstdz                  fbodyaccjerkmeanfreqx            
 fbodyaccjerkmeanfreqy             fbodyaccjerkmeanfreqz            
 fbodygyromeanx                    fbodygyromeany                   
 fbodygyromeanz                    fbodygyrostdx                    
 fbodygyrostdy                     fbodygyrostdz                    
 fbodygyromeanfreqx                fbodygyromeanfreqy               
 fbodygyromeanfreqz                fbodyaccmagmean                  
 fbodyaccmagstd                    fbodyaccmagmeanfreq              
 fbodybodyaccjerkmagmean           fbodybodyaccjerkmagstd           
 fbodybodyaccjerkmagmeanfreq       fbodybodygyromagmean             
 fbodybodygyromagstd               fbodybodygyromagmeanfreq         
 fbodybodygyrojerkmagmean          fbodybodygyrojerkmagstd          
 fbodybodygyrojerkmagmeanfreq      angletbodyaccmeangravity         
 angletbodyaccjerkmeangravitymean  angletbodygyromeangravitymean    
 angletbodygyrojerkmeangravitymean anglexgravitymean                
 angleygravitymean                 anglezgravitymean

Data was pulled from original UCI HAR Dataset.  Activity labels, subject id, and features were merged with the training data from the test and train data sets.
Only measurements involving mean or standard deviation were used for this data set.  

Finally, the train and test sets were merged and aggregated by activity and subject, aggregating on the mean for each category.
