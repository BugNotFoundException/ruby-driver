# Contributing

## Report the bugs you find

All code has bugs, but if you report them they can be squashed.

The best bug reports include everything that is needed to reliably reproduce the bug.
Try to write a test case and include it in your report (have a look at the
[regression test suite](spec/integration/regression_spec.rb) if you need inspiration).
Submit defect reports to our [Jira](https://datastax-oss.atlassian.net/projects/RUBY/issues).

If it's not possible to write a test case, for example because the bug only happens in
very particular circumstances, or is not deterministic, make sure you include as much
information as you can about the situation. The version of the ruby driver is an absolute
must, the version of Ruby and Cassandra are also very important. If there is a stack trace
from the error make sure to include that (unfortunately the asynchronous nature of the
ruby driver means that the stack traces are not always as revealing as they could be).

##Pull Requests

If you're able to fix a bug yourself, you can
[fork the repository](https://help.github.com/articles/fork-a-repo/) and submit a
[Pull Request](https://help.github.com/articles/using-pull-requests/) with the fix.

Please create a ticket in [Jira](https://datastax-oss.atlassian.net/projects/RUBY/issues)
first, and reference the ticket in your pull request description.

## Contribution License Agreement

To protect the community, all contributors are required to
[sign the DataStax Contribution License Agreement](http://cla.datastax.com/).
The process is completely electronic and should only take a few minutes.
