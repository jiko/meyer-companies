.PHONY: clean start stop status

clean:
	rm -rf _site .sass-cache

start:
	jekyll serve -w > /dev/null 2>&1 &
	compass watch > /dev/null 2>&1 &

stop:
	killall jekyll
	killall compass

status:
	ps auxw | grep -v grep | grep jekyll
	ps auxw | grep -v grep | grep compass
