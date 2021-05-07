PROJECT (HELLO)
# PREJECT指令用法
# PROJECT(projectname [CXX] [C] [JAVA])
# 可以用这个指令定义工程的名称,并指定工程支持的语言,语言列表是可以忽略的,默认情况表示支持所有语言
# 这个指令还隐式定义了两个cmake变量 projectname_BINARY_DIR 和 projectname_SOURCE_DIR,因为采用的是内部编
#　译,两个变量目前指的是工作所在路径，如果是外部编译，两者所指代的内容会有所不同，但是如果改变工程名，
# 那么这两个变量也需要修改，那会很麻烦，所有，建议直接使用PROJECT_BINARY_DIR 和 PROJECT_SOURCE_DIR
# 外部编译时,PROJECT_BINATY_DIR指的是编译路径, PROJECT_SOURCE_DIR指工程路径
SET(SRC_LIST main.c math.c)
# MESSAGE用法
# MESSAGR([SEND_ERROR | STATUS | FATAL_ERROR] "message to display")
# SEND_ERROR : 产生错误,生成过程被跳过
# STATUS: 输出前缀为-的信息
# FATAL_ERROR: 立即终止所有cmake过程
ADD_EXECUTABLE(hello ${SRC_LIST})
 
# 这个可以生产hello的可执行文件,相关的源文件是SRC_LIST中定义的源文件列表
# ${}用来引用变量,
# 需要注意,指令大小写无关,参数和变量大小写相关,但是推荐使用大写指令
