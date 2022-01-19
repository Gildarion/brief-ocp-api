# brief-ocp-api
Mini front API to query and resume some fields to ocp46 API

## run local
docker build -t brief-ocp-file .
oc create cm  brief-ocp-file-src --from-file=./app
oc apply -f ./base/deploy.yaml