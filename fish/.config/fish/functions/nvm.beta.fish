function brigand_nvm_fish_find_matching_version --description 'Finds the version matching the semver string'
	set -q NVM_DIR ; or set -l NVM_DIR ~/.nvm
	set -l brigand_nvm_fish_path $NVM_DIR/versions/node
	set -l target $argv[1]
	set -l best_match 0 0 0
	set -l raw_target_parts (echo $target | tr '.' '\n')

	# pad target_parts to three items with 0s
	set -l target_parts $raw_target_parts
	while test (count $target_parts) -lt 3
		set target_parts $target_parts 0
	end

	for version_directory in $brigand_nvm_fish_path/v*
		set -l source_version (echo "$version_directory" | sed 's/.*v//')
		set -l source_parts (echo $source_version | tr '.' '\n')

		# Rules out any versions less than the requested version
		set -l fail
		for i in (seq 1 3)
			set -l source_part $source_parts[$i]
			set -l target_part $target_parts[$i]

			# skip the checks if the target digit isn't specified
			if test (count $raw_target_parts) -lt $i
				break
			end

			# if they're equal, it's a match
			if test $target_part -eq $source_part
				continue
			end

			# if we're asking for a newer version the check failed
			if test $target_part -gt $source_part
				set fail true
				break
			end

			if test $target_part -lt $source_part
				set fail true
				break
			end
		end

		if not test -z $fail;
			continue
		end

		if not test $source_parts[1] -lt $best_match[1]
			if not test $source_parts[2] -lt $best_match[2]
				if not test $source_parts[3] -lt $best_match[3]
					set best_match $source_parts
				end
			end
		end
	end

	set best_match_string $best_match[1].$best_match[2].$best_match[3]
	if not test $best_match_string = '0.0.0'
		echo $best_match_string
	end
end

function nvm-fast
	set -l brigand_nvm_fish_path $NVM_DIR/versions/node
	if test (count $argv[1]) -lt 1
		echo 'nvm-fast: at least one argument is required'
	end

	set -l command $argv[1]

	if test $command = 'use'
		set -l target_version $argv[2]
		set -l matched_version (brigand_nvm_fish_find_matching_version $target_version)

		if test -z $matched_version
			echo "No version installed for $target_version, run nvm install $target_version"
			echo "Installed versions: "
			for file in $brigand_nvm_fish_path/v*
				echo ' -' $file
			end
		else
			set -l new_path
			for path_segment in $fish_user_paths
				if not echo "$path_segment" | grep -q "$brigand_nvm_fish_path"
					set new_path $new_path "$path_segment"
				end
			end
			set new_path $brigand_nvm_fish_path/v$matched_version/bin $new_path
			set fish_user_paths $new_path
		end
	else
		bash -c "source $NVM_DIR/nvm.sh; nvm $argv"
	end
end

function nvm
	nvm-fast $argv
end

