export KYTHE_ROOT_DIRECTORY="/home/cy/Documents/Sources/Github/cmake_helloworld"
export KYTHE_CORPUS="helloworld"

export KYTHE_OUTPUT_DIRECTORY="/tmp/kythe-output"

rm -rf "$KYTHE_OUTPUT_DIRECTORY"

mkdir -p "$KYTHE_OUTPUT_DIRECTORY"

/home/cy/Documents/Sources/Github/kythe-v0.0.49/tools/runextractor compdb \
    -extractor=/home/cy/Documents/Sources/Github/kythe-v0.0.49/extractors/cxx_extractor