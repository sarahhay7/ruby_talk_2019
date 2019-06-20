require 'fileutils'

FileUtils::NoWrite.touch('no_write.txt')
FileUtils.touch('noop.txt', noop: true)