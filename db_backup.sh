# take a backup of Database using pg_dump
# replace the postgres with Database username and the dbname with the Database name
# save it to a tar file
pg_dump --username=postgres -h localhost -F tar dbname > $(date "+%Y%m%d.tar")
# upload the DB backup to Dropbox
python uploader.py