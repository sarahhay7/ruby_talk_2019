require 'fileutils'

FileUtils::DryRun.touch('dry_run.txt')
FileUtils.touch('noop_verbose.txt', noop: true, verbose: true)