https://medium.com/@chaitanya__v/installing-dataturks-machine-learning-data-annotation-platform-on-premise-b839bb5a43ac

1) Install Build Tools (BuildTools_Full) - Visual Studio
2) Setup new environment variable
	VCTargetsPath=C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\Common7\IDE\VC\VCTargets
	VS110COMNTOOLS=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools

3) cd work/dataturks/DataTurks/hope/docker

	chmod +x init.sh
	./init.sh
	
3) Goto Bazaar folder
        npm i -g firebase@latest
	npm install -g node-gyp@latest
	npm install -g node-pre-gyp
	npm install -g gulp-cli
	
	npm install --loglevel=info
	
	
	
	npm install --save-dev extract-text-webpack-plugin
	npm install node-sass -g
	npm install --global windows-build-tools
	
	cd /home/bazaar/semantic
	gulp build
	
	npm run build-onprem
	npm run start-onprem

4) Backend
	open JDK Java 1.8 (SE)
	cd hope
	mvn package -DskipTests
	copy onprem.yml into target folder
	cd target
	java -Djava.net.useSystemProxies=true -server -jar dataturks-1.0-SNAPSHOT.jar server onprem.yml
