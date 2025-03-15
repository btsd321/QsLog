# QsLogConfig.cmake
# 这个文件是为QsLog库设置的配置文件

# 设置库头文件的路径
set(QsLog_INCLUDE_DIRS "include")

# 设置库的路径
set(QsLog_LIBRARIES "lib/QsLog.lib")

# 或者如果你的库是动态链接库，可以这样设置
# set(QsLog_LIBRARIES "C:/path/to/QsLog/lib/QsLog.dll")

# 外部项目可以通过以下方式找到并链接QsLog库
include_directories(${QsLog_INCLUDE_DIRS})

# 添加库路径
link_directories(${QsLog_LIBRARIES})

# 设置库的版本
set(QsLog_VERSION 2.0)

# 可选：设置库的依赖
# set(QsLog_DEPENDENCIES some_other_library)

# 这个函数用于查找并设置QsLog库
find_package_handle_standard_args(QsLog
                                  REQUIRED_VARS QsLog_INCLUDE_DIRS QsLog_LIBRARIES
                                  VERSION_VAR QsLog_VERSION)

# 提供库的路径变量给外部项目
if(QsLog_FOUND)
    get_filename_component(QsLog_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
    set(QsLog_FOUND True)
endif()