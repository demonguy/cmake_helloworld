# cmake helloworld for kythe example
it only contains 3 c++ source files and one CmakeList.txt to tell cmake how to compile it.
main.c main.h math.c

steps:
1. install cmake, golang. usually you can do it by `apt-get install` or `yum install`
2. install kythe executable from kythe release website `https://github.com/kythe/kythe/releases`
3. clone this project
4. run `git reset --hard && git clean -df` to make sure you really have a clean project without any redundant files which may cause failure.
5. modify run.sh, set `KYTHE` environment vairable to the directory where you install kythe on step 2
6. execute `./run.sh`
7. you can know visit `127.0.0.1:8080` on you web browser
