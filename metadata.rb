name             'db'

maintainer       'OptimisCorp.'
maintainer_email 'ops@optimiscorp.com'

license          'Apache 2.0'

description      'Configures mysql databases.'
long_description 'Configures databases, users, permissions & settings using data bags.'

version          '0.1.0'

recipe           'db::bootstrap', 'Creates DBs.'
recipe           'db::users', 'Manages DB users & permissions.'

%w{redhat centos scientific fedora debian ubuntu arch freebsd amazon}.each do |os|
  supports os
end

depends 'database'
