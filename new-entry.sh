#!/bin/bash

# Journal Entry Creator Script
# Creates a new journal entry folder with proper structure

# Get current date info
YEAR=$(date +"%Y")
MONTH=$(date +"%b" | tr '[:upper:]' '[:lower:]')  # e.g., "jan"
BASE_DIR="entries/$YEAR/$MONTH"

# Ordinal names array
ORDINALS=("first" "second" "third" "fourth" "fifth" "sixth" "seventh" "eighth" "ninth" "tenth" "eleventh" "twelfth" "thirteenth" "fourteenth" "fifteenth" "sixteenth" "seventeenth" "eighteenth" "nineteenth" "twentieth")

# Create base directory if it doesn't exist
mkdir -p "$BASE_DIR"

# Find the next available ordinal
NEXT_INDEX=0
if [ -d "$BASE_DIR" ]; then
    for i in "${!ORDINALS[@]}"; do
        if [ ! -d "$BASE_DIR/${ORDINALS[$i]}" ]; then
            NEXT_INDEX=$i
            break
        fi
    done
fi

# Get the next entry name
NEXT_ENTRY="${ORDINALS[$NEXT_INDEX]}"
ENTRY_DIR="$BASE_DIR/$NEXT_ENTRY"

# Create the entry directory
mkdir -p "$ENTRY_DIR"

# Create blank entry.md file
cat > "$ENTRY_DIR/entry.md" << 'EOF'
[Start writing your journal entry here...]
EOF

# Success message
echo "✅ Created new journal entry at: $ENTRY_DIR/entry.md"
echo ""
echo "You can now start writing in this file. When you're done:"
echo "  - Run /polish to get writing feedback"
echo "  - Run /review to get emotional and therapeutic analysis"
echo ""
echo "Full path: $(pwd)/$ENTRY_DIR/entry.md"
