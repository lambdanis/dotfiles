# Pull master in all repos in the given directory
# FIXME: check if repos are actual repos, handle git errors

directory="$1"

for repo in $directory/*; do
    cd $repo;
    git checkout master;
    git pull
done

