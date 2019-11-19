# Rename a batch of json files using values of a json field

directory="$1"
field_in_json="id"
suffix="-renamed"

for file in $directory/*.json; do
    # If jq fails, an error will be printed, but the file still will be renamed to $suffix.json
    # In case of multiple failures, it will be overriden and other files may be lost.
    # FIXME: Handle jq errors
    new_name=$(jq -r ".$field_in_json" "$file");
    mv "$file" "$directory/$new_name$suffix.json"
done

