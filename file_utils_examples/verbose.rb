require 'fileutils'

FileUtils::Verbose.touch('verbose_module.txt')
FileUtils.touch('verbose_option.txt', verbose: true)