#!/bin/bash

echo "# mddo-toolbox-cli"

cat << EOS
\`\`\`
$(bundle exec exe/mddo-toolbox help)
\`\`\`
EOS

echo "## Commands"

for command in $(bundle exec exe/mddo-toolbox help | grep mddo-toolbox | cut -d' ' -f4 | grep -v help)
do
  echo ''
  echo "### $command"
  echo ''
  echo '```'
  bundle exec exe/mddo-toolbox help "$command"
  echo '```'
done
