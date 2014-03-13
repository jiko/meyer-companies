.PHONY: all clean serve stop status

all: css/min.css js/min.js

css/min.css: css/normalize.css css/foundation.min.css css/main.css
	cat $^ | cssmin > $@

js/min.js: js/jquery.js js/foundation.min.js
	uglifyjs -cmo $@ $^

clean:
	rm -rf _site js/min.js css/min.css

start:
	jekyll serve -w > /dev/null 2>&1 &
	compass watch > /dev/null 2>&1 &

stop:
	killall jekyll
	killall compass

status:
	ps auxw | grep -v grep | grep jekyll
	ps auxw | grep -v grep | grep compass
