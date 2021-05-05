#!/bin/zsh

#simple=`curl -s http://wttr.in/?format=1`
#detail=`curl -s http://wttr.in/?format=2`

# Retrieve weather string to display in Polybar
# If run without parameters, toggle the view between simple and detail
# Query only if weather is more than 20 minutes stale
# --force can be set to force the query, in which case state will not switch

if [[ -z "${XDG_CACHE_HOME}" ]]; then
  cache_directory="$HOME/.cache/polybar"
else
  cache_directory="$XDG_CACHE_HOME/polybar"
fi
mkdir -p $cache_directory
echo "dir $cache_directory"
cache_file="${cache_directory}/wttr"
echo $cache_file
query=false
if [[ -z "${cache_file}" ]] || ([ ! -f $cache_file ] && [ ! -r $cache_file ]); then
  # Cache file does not exist or is unreadable
  query=true
else
  # Cache file exists and is readable
  query=false
fi

if ! $query; then 
  case "$1" in
      --force)
	# Force query
	query=true
	;;
      *)
        # Check cache time stamp and rate-limit queries
        last_write=$(stat -c %Y $cache_file)+1200
        curr_time=$(date +%s)

        if [[ $last_write -lt $curr_time ]]; then
          query=true
        fi
        ;;
  esac
fi 

# Execute wttr.in queries
# Update cache file
echo $query

