﻿all:	gitadd

date:	touch
	date --iso-8601=seconds -u -r sitemap.xml
touch:
	touch sitemap.xml
xml:
	xmllint --noout sitemap.xml
tidy:
	tidy -utf8 -m index.html
gitadd:
	git add index.html 404.html style.css makefile README.md sitemap.xml
gitpush:
	git push -u origin master
