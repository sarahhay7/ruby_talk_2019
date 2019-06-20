require 'fileutils'

include FileUtils

rm_rf('permissions')
mkdir('permissions')

cd 'permissions' do |dir|
  # creating files
  touch('readable_file')
  touch('writeable_file')
  touch('executable_file')

  gets

  # setting permissions
  chmod('u-w', 'readable_file')
  chmod(0755, 'executable_file')

  gets
  # copying files (preserves permissions)
  copy('readable_file', 'readable_copied')
  cp('writeable_file', 'writeable_copied')
  cp('executable_file', 'executable_copied')
end
