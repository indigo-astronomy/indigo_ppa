rm -rf db pool public
aptly repo create -config=aptly.conf -distribution=indigo -component=main indigo-release
aptly repo add -config=aptly.conf indigo-release ppa/pool/*/*/*
aptly repo add -config=aptly.conf indigo-release $*
aptly repo show -config=aptly.conf -with-packages indigo-release
aptly publish drop -config=aptly.conf -force-drop indigo
aptly publish repo -config=aptly.conf indigo-release
cp -Rf public/* ppa
rm -rf db pool public
