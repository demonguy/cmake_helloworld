$KYTHE/indexers/cxx_indexer --ignore_unimplemented \
  $KYTHE_OUTPUT_DIRECTORY/*.kzip > $KYTHE_OUTPUT_DIRECTORY/entries

$KYTHE/tools/entrystream --write_format=json < $KYTHE_OUTPUT_DIRECTORY/entries > entries.json

$KYTHE/tools/write_entries --graphstore leveldb:$KYTHE_OUTPUT_DIRECTORY_GS < $KYTHE_OUTPUT_DIRECTORY/entries

$KYTHE/tools/write_tables --graphstore $KYTHE_OUTPUT_DIRECTORY_GS --out $KYTHE_OUTPUT_DIRECTORY_SERVING