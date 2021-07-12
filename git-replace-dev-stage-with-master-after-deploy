git clone git@github.com:sample/sample-repo.git

# for DEV branch
cd ample-repo
git checkout dev && git pull origin dev
git checkout -b dev_bkp_01_feb_2020_after_live_deploy

# for STAGE branch
git checkout stage && git pull origin stage
git checkout -b stage_bkp_01_feb_2020_after_live_deploy
git push origin stage_bkp_01_feb_2020_after_live_deploy

# for PRE-PROD branch
git checkout pre-prod && git pull origin pre-prod
git checkout -b pre-prod_bkp_01_feb_2020_after_live_deploy
git push origin pre-prod_bkp_01_feb_2020_after_live_deploy

# for UAT branch
git checkout uat && git pull origin uat
git checkout -b uat_bkp_01_feb_2020_after_live_deploy
git push origin uat_bkp_01_feb_2020_after_live_deploy

git push origin :dev        #(delete the remote dev branch)
git push origin :stage      #(delete the remote stage branch)
git push origin :pre-prod   #(delete the remote pre-prod branch)
git push origin :uat        #(delete the remote pre-prod branch)

# recreate all the branches deleted early based on MASTER (dev, stage, pre-prod and uat)
git checkout master
git branch -D dev stage pre-prod uat

git checkout master
git checkout -b dev master
git push origin dev

git checkout master
git checkout -b stage master
git push origin stage

git checkout master
git checkout -b pre-prod master

git checkout master
git checkout -b uat master
