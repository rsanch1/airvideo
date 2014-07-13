airvideo
========

airvideo for unraid docker




It seems the path needs to be setup correctly in the run command and in the folder config since there is no config site to enter the path after it is up and running.

I recommend using gfjardim's docker plugin in installing this docker in unraid.

docker run -d --name airvideo -p 45631:45631 -v /path/to/airvideoserver:/config -v /path/to/Movies:/Movies -v /path/to/TVShows:/TVShows eroz/airvideo


Much Thanks to gfjardim who converted the docker to phusion base and practically rewrote the entire code!  Thank You, gfjardim!
