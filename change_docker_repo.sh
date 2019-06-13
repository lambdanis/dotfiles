old_repository=old-repo
new_repository=new-repo

set -x
for image in $(docker images | awk -v regex="^"$old_repository"/" '{if ($1 ~ regex) print $1":"$2}');
do
  docker tag $image ${image/$old_repository/$new_repository};
  docker rmi $image;
done
