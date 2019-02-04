#!/bin/sh
SID="S231"
DATE_WITH_TIME=$(date "+%Y.%m.%d-%H.%M.%S")

SCM_COMMIT_NAME="test commit"
SCM_FEATURE_NAME="feature_"$SID"_"$DATE_WITH_TIME

git init .
#git clone https://github.com/arvindiway/FeatureTest2.git
#git remote add origin https://arvindiway:bd2c4ccdf3379733d90586216ebdf3bc5c32c627@github.com/arvindiway/FeatureTest2.git/
git checkout -b $SCM_FEATURE_NAME
git add .
git commit -a -m  "$SCM_COMMIT_NAME"
# to add new remote repo git remote add origin https://arvindiway:bd2c4ccdf3379733d90586216ebdf3bc5c32c627@github.com/arvindiway/ignite-scm-test-1.git/
git remote add origin https://arvindiway@github.com/arvindiway/IgniteSCMTest3.git/
git push origin $SCM_FEATURE_NAME

#git merge develop
#git checkout develop
##git merge $SCM_FEATURE_NAME/develop
#git merge --no-ff $SCM_FEATURE_NAME
#git push -u origin develop
#merge: develop - not something we can merge
#error: pathspec 'develop' did not match any file(s) known to git.
#git fetch develop

#git merge develop develop doesnt exist on local
git checkout -b develop
git pull origin develop --allow-unrelated-histories
#git checkout -t -b develop origin/develop 
#git checkout develop
git merge --no-ff $SCM_FEATURE_NAME --allow-unrelated-histories -Xignore-all-space -Xtheirs -m "$SCM_COMMIT_NAME"
git checkout -b develop
git pull origin develop --allow-unrelated-histories
git push -u origin develop

#git fetch origin develop
#git merge develop
#git push origin $SCM_FEATURE_NAME:develop