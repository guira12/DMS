#!/bin/bash
module="$1"
ENV_FOLDER="$2"
ENV_PATH="$module"/"$ENV_FOLDER"/


if [ -z "$module" ] || [ -z "$ENV_FOLDER" ]; then
  echo "Error: arguments manquants"
  echo "Usage: $0 <module_name> <env_folder>"
  exit 1
fi

for file in "$ENV_PATH"*.in; do
  newFile="${file%.in}"
  if [ ! -e "$newFile" ]; then
    touch "$newFile"
  else
    > "$newFile"
  fi

  while IFS= read -r line; do
    var=$(echo "$line" | awk 'match($0, /@@[^@]+@@/) { print substr($0, RSTART+2, RLENGTH-4) }')
    line=$(echo "$line" | sed "s/@@$var@@/${!var}/")
    echo $line >> $newFile
  done < "$file"
done

