  $ source $TESTDIR/scaffold

Exported symbols:

  $ use <<EOF
  > (loop [[sym entry]
  >        :pairs (require "judge")
  >        :when (table? entry)
  >        :let [{:private private} entry]
  >        :when (and (symbol? sym) (not private))]
  >   (pp sym))
  > EOF
  $ run
  deftest-type
  deftest:
  deftest
  test
  test-macro
  test-error

Installed files:

  $ tree jpm_tree
  jpm_tree
  |-- bin
  |   `-- judge
  |-- lib
  |   |-- cmd
  |   |   |-- arg-parser.janet
  |   |   |-- bridge.janet
  |   |   |-- help.janet
  |   |   |-- init.janet
  |   |   |-- param-parser.janet
  |   |   `-- util.janet
  |   `-- judge
  |       |-- colorize.janet
  |       |-- init.janet
  |       |-- rewriter.janet
  |       |-- runner.janet
  |       |-- shared.janet
  |       `-- util.janet
  `-- man
  
  5 directories, 13 files
