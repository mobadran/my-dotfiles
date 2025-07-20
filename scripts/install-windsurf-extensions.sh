EXT_FILE='~/.dotfiles/.windsurf/extensions.txt'

if [ ! -f "$EXT_FILE" ]; then
  echo "Extension list not found: $EXT_FILE"
  exit 1
fi

while IFS= read -r extension || [[ -n "$extension" ]]; do
  [[ -z "$extension" || "$extension" =~ ^# ]] && continue
  windsurf --install-extension "$extension"
done <"$EXT_FILE"
