#!/bin/bash
# Black Tie Booth — one-command deploy
# Usage: ./deploy.sh "optional message"

MSG=${1:-"Site update"}

echo "📦 Staging changes..."
git add -A

echo "💾 Committing: $MSG"
git commit -m "$MSG"

echo "🚀 Pushing to GitHub..."
git push

echo "✅ Done! Netlify will deploy your changes in ~30 seconds."
