deploy:
	heroku create --stack cedar
	git push heroku master
	heroku scale web=1

undeploy:
	heroku apps|tail -2|head -1|xargs heroku destroy --app
	heroku apps|tail -2|head -1|xargs heroku destroy --confirm
