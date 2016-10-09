#
#  Created by Games Neox - 2016
#  Copyright © 2016 Games Neox. All rights reserved.
#

Pod::Spec.new do |s|
s.name                  = 'GNPreconditions'
s.version               = '0.3.0'
s.summary               = 'Defenensive-code tool for Objective-C'

s.homepage              = 'https://github.com/games-neox/GNPreconditions'
s.license               = { :type => 'MIT', :file => 'LICENSE' }
s.author                = { 'Games Neox' => 'games.neox@gmail.com' }
s.source                = { :git => 'https://github.com/games-neox/GNPreconditions.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'

s.dependency 'GNExceptions'
s.dependency 'GNLog'

s.source_files          = 'GNPreconditions/Classes/*'

s.public_header_files   = 'GNPreconditions/Classes/*.h'
end
