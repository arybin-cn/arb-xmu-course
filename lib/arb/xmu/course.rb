Gem::Specification.find_by_name('arb-xmu-course').full_require_paths.each do |dir|
  Dir[dir+File::Separator+'**'+File::Separator+'*.rb'].each do |lib_name|
    require lib_name
  end
end
