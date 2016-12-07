#
#  Be sure to run `pod spec lint RxFirebase.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "RxFirebase"
  s.version      = "0.0.1"
  s.summary      = "support Rx programming for Firebase frameworks"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = "contains Swift extension, support Rx programming for Firebase frameworks"

  s.homepage     = "https://github.com/ttkien/RxFirebase"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "Apache License, Version 2.0"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "Tran Kien" => "kien.tran@cogini.com" }
  # Or just: s.author    = "Tran Kien"
  # s.authors            = { "Tran Kien" => "kien.tran@cogini.com" }
  # s.social_media_url   = "http://twitter.com/Tran Kien"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "9.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/ttkien/RxFirebase.git", :tag => "#{s.version}", :branch => "develop" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "RxFirebase", "RxFirebase/**/*.{swift,h,m}"
  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
   s.frameworks = "Security", "Foundation", "FirebaseAuth"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

s.xcconfig = { "FRAMEWORK_SEARCH_PATHS" => '$(inherited) "${PODS_ROOT}/FirebaseDatabase/Frameworks" "${PODS_ROOT}/FirebaseCore/Frameworks/frameworks" "${PODS_ROOT}/FirebaseAuth/Frameworks/frameworks" "$PODS_CONFIGURATION_BUILD_DIR/GTMSessionFetcher" "$PODS_CONFIGURATION_BUILD_DIR/GoogleToolboxForMac" "$PODS_CONFIGURATION_BUILD_DIR/RxSwift" "${PODS_ROOT}/FirebaseAnalytics/Frameworks/frameworks" "${PODS_ROOT}/GoogleSymbolUtilities/Frameworks/frameworks" "${PODS_ROOT}/GoogleInterchangeUtilities/Frameworks/frameworks" "${PODS_ROOT}/FirebaseInstanceID/Frameworks/frameworks"', "OTHER_LDFLAGS" => '$(inherited) -ObjC -l"c++" -l"icucore" -l"sqlite3" -l"z" -framework "AddressBook" -framework "CFNetwork" -framework "FirebaseAnalytics" -framework "FirebaseAuth" -framework "FirebaseCore" -framework "FirebaseDatabase" -framework "FirebaseInstanceID" -framework "GTMSessionFetcher" -framework "GoogleInterchangeUtilities" -framework "GoogleSymbolUtilities" -framework "GoogleToolboxForMac" -framework "RxSwift" -framework "Security" -framework "StoreKit" -framework "SystemConfiguration"',
"HEADER_SEARCH_PATHS" => '$(inherited) ${PODS_ROOT}/Firebase/Core/Sources "${PODS_ROOT}/Headers/Public" "${PODS_ROOT}/Headers/Public/Firebase" "${PODS_ROOT}/Headers/Public/FirebaseAnalytics" "${PODS_ROOT}/Headers/Public/FirebaseCore" "${PODS_ROOT}/Headers/Public/FirebaseDatabase" "${PODS_ROOT}/Headers/Public/FirebaseInstanceID" "${PODS_ROOT}/Headers/Public/GoogleInterchangeUtilities" "${PODS_ROOT}/Headers/Public/GoogleSymbolUtilities"'


}
  s.dependency "RxSwift" , "~> 3.0"
  s.dependency "Firebase/Database"
  s.dependency "Firebase/Auth"

end
