a.txt: Jenkinsfile
	type Jenkinsfile > a.txt

.PHONY: clean test deploy
clean:
	del a.txt

test:
	cat a.txt

deploy:
	echo deploy