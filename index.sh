export KYTHE_ROOT_DIRECTORY="/home/cy/Documents/Sources/Github/cmake_helloworld"
export KYTHE_CORPUS="helloworld"

export KYTHE_OUTPUT_DIRECTORY="/tmp/kythe-output"
export KYTHE_OUTPUT_DIRECTORY_GS="/tmp/kythe-output/gs"
export KYTHE_OUTPUT_DIRECTORY_SERVING="/tmp/kythe-output/serving"

mkdir -p "$KYTHE_OUTPUT_DIRECTORY"
mkdir -p "$KYTHE_OUTPUT_DIRECTORY_GS"
mkdir -p "$KYTHE_OUTPUT_DIRECTORY_SERVING"


/home/cy/Documents/Sources/Github/kythe-v0.0.49/indexers/cxx_indexer --ignore_unimplemented \
  $KYTHE_OUTPUT_DIRECTORY/*.kzip > $KYTHE_OUTPUT_DIRECTORY/entries

/home/cy/Documents/Sources/Github/kythe-v0.0.49/tools/entrystream --write_format=json < $KYTHE_OUTPUT_DIRECTORY/entries > entries.json

/home/cy/Documents/Sources/Github/kythe-v0.0.49/tools/write_entries --graphstore leveldb:$KYTHE_OUTPUT_DIRECTORY_GS < $KYTHE_OUTPUT_DIRECTORY/entries

/home/cy/Documents/Sources/Github/kythe-v0.0.49/tools/write_tables --graphstore $KYTHE_OUTPUT_DIRECTORY_GS --out $KYTHE_OUTPUT_DIRECTORY_SERVING