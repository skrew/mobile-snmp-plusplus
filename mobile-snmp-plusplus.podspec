Pod::Spec.new do |spec|
spec.name = "mobile-snmp-plusplus"
spec.version = "1.13"
spec.summary = "Snmp for iOS"
spec.homepage = "https://github.com/skrew/mobile-snmp-plusplus"
spec.license = 'Apache 2.0'
spec.author = { "skrew" => "trash@rootmail.org" }
spec.source = { :git => 'https://github.com/skrew/mobile-snmp-plusplus.git', :branch => 'master'}
spec.requires_arc = false
spec.library = 'c++'
spec.ios.deployment_target = '7.0'
spec.source_files = "Mobile SNMP++/", "Mobile SNMP++/src/*.{h,cpp}"
spec.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"./**/"' }
spec.frameworks = ['Foundation']

spec.subspec 'snmp_pp' do |spec|
    spec.ios.source_files = "Mobile SNMP++/include/snmp_pp/**/*.h"
end

end
