# コンテナ削除
docker rm $(docker ps -aq)

# 未使用の image 削除
docker rmi $(docker images -f dangling=true -q)

# <none>のimage 削除
docker rmi $(docker images  --filter "dangling=true" -aq)
