deploy:
	heroku create --stack cedar
	git push heroku master
	heroku scale web=1
