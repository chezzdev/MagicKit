Pod::Spec.new do |s|
  s.name     = 'MagicKit'
  s.module_name = 'MagicKit'
  s.version  = '0.0.4'
  s.license  = 'MIT'
  s.summary  = 'Fork of MagicKit with fixes for errors and warnings present in later versions of Clang and updated libmagic sources'
  s.homepage = 'https://github.com/chezzdev/MagicKit'
  s.author   = 'chezzdev'
  s.source   = { :git => 'https://github.com/chezzdev/MagicKit.git',
                 :tag => '0.0.4' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.resource = 'magic.mgc'  
  s.source_files = 'libmagic/*.{h,c}', '*.{h,m}'
  s.exclude_files = "libmagic/strlcpy.c","libmagic/strlcat.c"

  s.ios.frameworks   = 'Foundation', 'MobileCoreServices'
  s.osx.frameworks   = 'Foundation', 'CoreServices'

  s.library = 'z'

  s.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) HAVE_CONFIG_H=1' }
end
