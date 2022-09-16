#! /bin/bash
echo "testing frontend"
url=$("http://localhost:3000")
result=$(curl --write-out %{http_code} --silent --output /dev/null $url)

if [ “$result” == “200” ] ; then
  echo “OK”
else
  echo $result
  exit 1
fi

