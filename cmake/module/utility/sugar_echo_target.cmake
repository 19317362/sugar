# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

# http://www.kitware.com/blog/home/post/390

include(sugar_add_this_to_sourcelist)
sugar_add_this_to_sourcelist()

include(sugar_echo_target_property)
include(sugar_expected_number_of_arguments)

function(sugar_echo_target target)
  sugar_expected_number_of_arguments(${ARGC} 1)
  if(NOT TARGET ${target})
    message("There is no target named '${target}'")
    return()
  endif()

  set(
      props
      DEBUG_OUTPUT_NAME
      RELEASE_OUTPUT_NAME
      DEBUG_POSTFIX
      RELEASE_POSTFIX
      CXX_VISIBILITY_PRESET
      # ALIASED_TARGET (get property unknown error)
      ARCHIVE_OUTPUT_DIRECTORY
      ARCHIVE_OUTPUT_DIRECTORY_DEBUG
      ARCHIVE_OUTPUT_DIRECTORY_RELEASE
      ARCHIVE_OUTPUT_NAME
      ARCHIVE_OUTPUT_NAME_DEBUG
      ARCHIVE_OUTPUT_NAME_RELEASE
      AUTOMOC
      AUTOMOC_MOC_OPTIONS
      BUILD_WITH_INSTALL_RPATH
      BUNDLE
      BUNDLE_EXTENSION
      COMPATIBLE_INTERFACE_BOOL
      COMPATIBLE_INTERFACE_STRING
      COMPILE_DEFINITIONS
      COMPILE_DEFINITIONS_DEBUG
      COMPILE_DEFINITIONS_RELEASE
      COMPILE_FLAGS
      COMPILE_OPTIONS
      DEBUG_POSTFIX
      DEFINE_SYMBOL
      ENABLE_EXPORTS
      EXCLUDE_FROM_ALL
      EXCLUDE_FROM_DEFAULT_BUILD
      EXCLUDE_FROM_DEFAULT_BUILD_DEBUG
      EXCLUDE_FROM_DEFAULT_BUILD_RELEASE
      EXPORT_NAME
      EchoString
      FOLDER
      FRAMEWORK
      Fortran_FORMAT
      Fortran_MODULE_DIRECTORY
      GENERATOR_FILE_NAME
      GNUtoMS
      HAS_CXX
      IMPLICIT_DEPENDS_INCLUDE_TRANSFORM
      IMPORTED
      IMPORTED_CONFIGURATIONS
      IMPORTED_IMPLIB
      IMPORTED_IMPLIB_DEBUG
      IMPORTED_IMPLIB_RELEASE
      IMPORTED_LINK_DEPENDENT_LIBRARIES
      IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG
      IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE
      IMPORTED_LINK_INTERFACE_LANGUAGES
      IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG
      IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE
      IMPORTED_LINK_INTERFACE_LIBRARIES
      IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG
      IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE
      IMPORTED_LINK_INTERFACE_MULTIPLICITY
      IMPORTED_LINK_INTERFACE_MULTIPLICITY_DEBUG
      IMPORTED_LINK_INTERFACE_MULTIPLICITY_RELEASE
      IMPORTED_LOCATION
      IMPORTED_LOCATION_DEBUG
      IMPORTED_LOCATION_RELEASE
      IMPORTED_NO_SONAME
      IMPORTED_NO_SONAME_DEBUG
      IMPORTED_NO_SONAME_RELEASE
      IMPORTED_SONAME
      IMPORTED_SONAME_DEBUG
      IMPORTED_SONAME_RELEASE
      IMPORT_PREFIX
      IMPORT_SUFFIX
      INCLUDE_DIRECTORIES
      INSTALL_NAME_DIR
      INSTALL_RPATH
      INSTALL_RPATH_USE_LINK_PATH
      INTERFACE_COMPILE_DEFINITIONS
      INTERFACE_COMPILE_OPTIONS
      INTERFACE_INCLUDE_DIRECTORIES
      INTERFACE_LINK_LIBRARIES
      INTERFACE_POSITION_INDEPENDENT_CODE
      INTERFACE_SYSTEM_INCLUDE_DIRECTORIES
      INTERPROCEDURAL_OPTIMIZATION
      INTERPROCEDURAL_OPTIMIZATION_DEBUG
      INTERPROCEDURAL_OPTIMIZATION_RELEASE
      LABELS
      LIBRARY_OUTPUT_DIRECTORY
      LIBRARY_OUTPUT_DIRECTORY_DEBUG
      LIBRARY_OUTPUT_DIRECTORY_RELEASE
      LIBRARY_OUTPUT_NAME
      LIBRARY_OUTPUT_NAME_DEBUG
      LIBRARY_OUTPUT_NAME_RELEASE
      LINKER_LANGUAGE
      LINK_DEPENDS
      LINK_FLAGS
      LINK_FLAGS_DEBUG
      LINK_FLAGS_RELEASE
      LINK_INTERFACE_LIBRARIES
      LINK_INTERFACE_LIBRARIES_DEBUG
      LINK_INTERFACE_LIBRARIES_RELEASE
      LINK_INTERFACE_MULTIPLICITY
      LINK_INTERFACE_MULTIPLICITY_DEBUG
      LINK_INTERFACE_MULTIPLICITY_RELEASE
      LINK_LIBRARIES
      LINK_SEARCH_END_STATIC
      LINK_SEARCH_START_STATIC
      LOCATION
      LOCATION_DEBUG
      LOCATION_RELEASE
      MACOSX_BUNDLE
      MACOSX_BUNDLE_INFO_PLIST
      MACOSX_FRAMEWORK_INFO_PLIST
      MACOSX_RPATH
      MAP_IMPORTED_CONFIG_DEBUG
      MAP_IMPORTED_CONFIG_RELEASE
      NAME
      NO_SONAME
      OSX_ARCHITECTURES
      OSX_ARCHITECTURES_DEBUG
      OSX_ARCHITECTURES_RELEASE
      OUTPUT_NAME
      OUTPUT_NAME_DEBUG
      OUTPUT_NAME_RELEASE
      PDB_NAME
      PDB_NAME_DEBUG
      PDB_NAME_RELEASE
      PDB_OUTPUT_DIRECTORY
      PDB_OUTPUT_DIRECTORY_DEBUG
      PDB_OUTPUT_DIRECTORY_RELEASE
      POSITION_INDEPENDENT_CODE
      POST_INSTALL_SCRIPT
      PREFIX
      PRE_INSTALL_SCRIPT
      PRIVATE_HEADER
      PROJECT_LABEL
      PUBLIC_HEADER
      RESOURCE
      RULE_LAUNCH_COMPILE
      RULE_LAUNCH_CUSTOM
      RULE_LAUNCH_LINK
      RUNTIME_OUTPUT_DIRECTORY
      RUNTIME_OUTPUT_DIRECTORY_DEBUG
      RUNTIME_OUTPUT_DIRECTORY_RELEASE
      RUNTIME_OUTPUT_NAME
      RUNTIME_OUTPUT_NAME_DEBUG
      RUNTIME_OUTPUT_NAME_RELEASE
      SKIP_BUILD_RPATH
      SOURCES
      SOVERSION
      STATIC_LIBRARY_FLAGS
      STATIC_LIBRARY_FLAGS_DEBUG
      STATIC_LIBRARY_FLAGS_RELEASE
      SUFFIX
      TYPE
      VERSION
      VISIBILITY_INLINES_HIDDEN
      VS_DOTNET_REFERENCES
      VS_DOTNET_TARGET_FRAMEWORK_VERSION
      VS_GLOBAL_KEYWORD
      VS_GLOBAL_PROJECT_TYPES
      VS_GLOBAL_ROOTNAMESPACE
      VS_KEYWORD
      VS_SCC_AUXPATH
      VS_SCC_LOCALPATH
      VS_SCC_PROJECTNAME
      VS_SCC_PROVIDER
      VS_WINRT_EXTENSIONS
      VS_WINRT_REFERENCES
      WIN32_EXECUTABLE
      XCODE_ATTRIBUTE_SDKROOT
      XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY
  )

  message("======================== ${target} ========================")
  foreach(p ${props})
    sugar_echo_target_property("${target}" "${p}")
  endforeach()
  message("")
endfunction()
