
all: css/danny.css

css/danny.css: css/danny.scss
	sass css/danny.scss > css/danny.css
