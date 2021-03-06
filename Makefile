export PATH := node_modules/.bin:$(PATH)

.PHONY: all clean start stop status

all: css/min.css js/min.js

css/min.css: css/normalize.css css/foundation.min.css css/main.css
	cat $^ | cssmin > $@

js/min.js: js/jquery.js js/foundation.min.js
	uglifyjs -cmo $@ $^

clean:
	rm -rf _site js/min.js css/min.css

start:
	jekyll serve -w > /dev/null 2>&1 &

stop:
	killall jekyll

status:
	ps auxw | grep -v grep | grep jekyll
