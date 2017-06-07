IF(NOT EXISTS "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/install_manifest.txt")
  MESSAGE(FATAL_ERROR "Cannot find install manifest: \"/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/install_manifest.txt\"")
ENDIF(NOT EXISTS "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/install_manifest.txt")

FILE(READ "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/install_manifest.txt" files)
STRING(REGEX REPLACE "\n" ";" files "${files}")
FOREACH(file ${files})
  MESSAGE(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
  IF(EXISTS "$ENV{DESTDIR}${file}")
    EXEC_PROGRAM(
      "/usr/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
      )
    IF(NOT "${rm_retval}" STREQUAL 0)
      MESSAGE(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    ENDIF(NOT "${rm_retval}" STREQUAL 0)
  ELSE(EXISTS "$ENV{DESTDIR}${file}")
    MESSAGE(STATUS "File \"$ENV{DESTDIR}${file}\" does not exist.")
    # But it might be an invalid symbolic link; so, it might be still there!
    EXEC_PROGRAM(
      "/usr/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
      )
  ENDIF(EXISTS "$ENV{DESTDIR}${file}")
ENDFOREACH(file)

SET(directories "include/simspark"
                "lib/simspark"
                "share/simspark"
                "share/doc/simspark"
)

FOREACH(dir ${directories})
  MESSAGE(STATUS "Uninstalling \"$ENV{DESTDIR}/usr/local/${dir}\"")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/${dir}")
    EXEC_PROGRAM(
      "/usr/bin/cmake" ARGS "-E remove_directory \"$ENV{DESTDIR}/usr/local/${dir}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
      )
    IF(NOT "${rm_retval}" STREQUAL 0)
      MESSAGE(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}/usr/local/${dir}\"")
    ENDIF(NOT "${rm_retval}" STREQUAL 0)
  ELSE(EXISTS "$ENV{DESTDIR}/usr/local/${dir}")
    MESSAGE(STATUS "Directory \"$ENV{DESTDIR}/usr/local/${dir}\" does not exist.")
  ENDIF(EXISTS "$ENV{DESTDIR}/usr/local/${dir}")
ENDFOREACH(dir)
