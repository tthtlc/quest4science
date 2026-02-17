
export GEMINI_API_KEY=""

##curl "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$GEMINI_API_KEY" \
##  -H 'Content-Type: application/json' \
##  -X POST \
##  -d '{
##    "contents": [
##      {
##        "parts": [
##          {
##            "text": "Explain how AI works in a few words"
##          }
##        ]
##      }
##    ]
##  }'
##

set -x

  imagen() {
  prompt="$1"
  outfile="${2:-gemini-image}.png"

  curl -s \
    "https://generativelanguage.googleapis.com/v1beta/models/imagen-4.0-generate-001:predict?key=${GEMINI_API_KEY}" \
    -H 'Content-Type: application/json' \
    -X POST \
    -d '{
      "instances": [{"prompt": "'"$prompt"'"}],
      "parameters": { "sampleCount": 1, "aspectRatio": "16:9" }
    }' \
  | jq -r '.predictions[0].bytesBase64Encoded' \
  | base64 -d > "$outfile"

  echo "Saved: $outfile"
}

imagen "$1" "$2"
