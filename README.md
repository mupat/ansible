# ansible
Running ansible inside of a docker container to avoid installing dependencies. Comes bundled with `boto` to enable work with AWS.

## prerequesites
 * create playbooks
 * get aws credentials (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_REGION`)

## usage
this example shows the usage with playbooks located in `playbooks` in the root folder and the aws credentials defined as environment variables beforehand
```
docker build -t ansible .
docker run -it -v `pwd`/playbooks:/playbooks ansible ansible-playbook /playbooks/setup.yml
```
