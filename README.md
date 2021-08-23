# cmake helloworld for kythe example

steps:
1. install cmake, golang. usually you can do it by `apt-get install` or `yum install`
2. install kythe executable from kythe release website `https://github.com/kythe/kythe/releases`
3. clone this project
4. modify run.sh, set `KYTHE` environment vairable to the directory where you install kythe on step 2
5. execute `./run.sh`
6. you can know visit `127.0.0.1:8080` on you web browser
