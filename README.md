airvideo
========

airvideo for docker

*testing jfgardim's commits*


It seems the path needs to be setup correctly in the run command and in the folder config since there is no config site to enter the path after it is up and running.

Copy the AirVideoServerLinux.properties file from github and save it.

just be sure to edit the folder= to include the folders you want, just be sure to follow the format.  For example, if you wanted to add a kids and documentary folder.  The folders path would look like

folders = Movies:/Movies, TVShows:/TVShows, Kids:/Kids, Documentary:/Documentary

And the run command then needs to pass through the actual folder path locations.

docker run -d --name airvideo -p 45631:45631 -v /path/to/airvideoserverlinux.properties:/opt/airvideo-server/AirVideoServerLinux.properties -v /path/to/Movies:/Movies -v /path/to/TVShows:/TVShows -v /path/to/Kids:/Kids -v /path/to/Documentary:/Documentary eroz/airvideo
