export KYTHE_OUTPUT_DIRECTORY_SERVING="/tmp/kythe-output/serving"

/home/cy/Documents/Sources/Github/kythe-v0.0.49/tools/http_server \
  --public_resources /home/cy/Documents/Sources/Github/kythe/bazel-out/k8-fastbuild/bin/kythe/web/ui/resources/public \
  --listen :8080 \
  --serving_table $KYTHE_OUTPUT_DIRECTORY_SERVING