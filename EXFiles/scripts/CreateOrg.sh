echo "*** Creating scratch Org..."
sf org create scratch --definition-file config/project-scratch-def.json --set-default --alias soARC101 --duration-days 30
echo "*** Pushing metadata to scratch Org..."
sf project deploy start
echo "*** Assigning permission set to your user..."
sf org assign permset --name psTest
echo "*** Generating Password..."
sf force user password generate
echo "*** Saving the Org Details"
sf org display user --json >> logFiles/user.json
