#!/bin/sh

WEBHOOK_URL=$1
IMAGE=$2
TEST_NAME=$3
REPO=$4
RUN=$5
GH_EVENT=$6

curl \
  -sS -X POST \
  -H 'Content-type: application/json' \
  --data "{
	\"blocks\": [
		{
			\"type\": \"header\",
			\"text\": {
				\"type\": \"plain_text\",
				\"text\": \"Load Tests\",
				\"emoji\": true
			}
		},
		{
			\"type\": \"section\",
			\"text\": {
				\"type\": \"mrkdwn\",
				\"text\": \":exclamation: Load test *${TEST_NAME}* failed to met expectations in *${IMAGE}*. This load test was triggered via GitHub event *${GH_EVENT}*.\"
			}
		},
		{
			\"type\": \"actions\",
			\"elements\": [
				{
					\"type\": \"button\",
					\"text\": {
						\"type\": \"plain_text\",
						\"text\": \"Open GitHub Action Run\",
						\"emoji\": true
					},
					\"value\": \"go\",
					\"url\": \"https://github.com/$REPO/actions/runs/$RUN\",
					\"action_id\": \"actionId-0\"
				}
			]
		}
	]
  }" \
  "$WEBHOOK_URL"
