---
name: new-journal-entry
description: Create a new journal entry folder with proper date-based structure and naming
---

## Overview

This skill helps you quickly set up a new journal entry by:

1. **Detecting the current date** to determine year and month
2. **Finding existing entries** in that month to determine the next sequential name
3. **Creating the folder structure** with a blank `entry.md` file
4. **Opening the entry file** for you to start writing

## How It Works

### Folder Naming Logic

The skill uses ordinal names for entries:

- `first` → `second` → `third` → `fourth` → `fifth` → `sixth` → `seventh` → `eighth` → `ninth` → `tenth`
- After tenth: `eleventh` → `twelfth` → etc.

### Date-Based Organization

Entries are organized by year and month:

```
entries/
  └── 2026/
      └── jan/  (lowercase, 3-letter month abbreviation)
          ├── first/
          ├── second/
          └── third/
```

Month abbreviations:

- jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec

## Usage

Simply run:

```
/new-journal-entry
```

The skill will:

1. Check today's date (e.g., January 9, 2026)
2. Look in `entries/2026/jan/` for existing entries
3. Find the highest sequential entry (e.g., if `first` exists, create `second`)
4. Create `entries/2026/jan/second/` folder
5. Create blank `entries/2026/jan/second/entry.md` file
6. Report the path where you can start writing

## Entry Template

The blank `entry.md` file will be created with a simple template:

```markdown
[Start writing your journal entry here...]
```

After writing, you can use:

- `/writing-assistant` to get writing feedback and create polished version
- `/journal-review` to get emotional and therapeutic analysis

## Examples

**First entry of the month:**

```bash
/new-entry
# Creates: entries/2026/jan/first/entry.md
```

**Subsequent entries:**

```bash
/new-entry
# If 'first' exists, creates: entries/2026/jan/second/entry.md
# If 'first' and 'second' exist, creates: entries/2026/jan/third/entry.md
```

**New month:**

```bash
/new-entry
# On February 1, creates: entries/2026/feb/first/entry.md
```

## Implementation Notes

**For Claude Code:** When this skill is invoked:

1. Get current date using bash `date` command:

   ```bash
   date +"%Y/%b/%d"  # Outputs: 2026/Jan/09
   ```

2. Convert month to lowercase 3-letter abbreviation:

   - January → jan
   - February → feb
   - etc.

3. Check for existing entries in that month's directory:

   ```bash
   ls entries/2026/jan/
   ```

4. Determine next ordinal name:

   - Use array: `["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth", "thirteenth", "fourteenth", "fifteenth"]`
   - Find highest existing index and increment

5. Create folder structure:

   ```bash
   mkdir -p entries/2026/jan/second
   ```

6. Create blank entry file:

   ```bash
   echo "[Start writing your journal entry here...]" > entries/2026/jan/second/entry.md
   ```

7. Report to user:

   ```
   ✅ Created new journal entry at: entries/2026/jan/second/entry.md

   You can now start writing in this file. When you're done:
   - Run /polish to get writing feedback
   - Run /review to get emotional and therapeutic analysis
   ```

## Edge Cases

**No entries directory exists:**

- Create `entries/YYYY/mmm/first/entry.md` structure from scratch

**Month directory doesn't exist yet:**

- Create the month directory and start with `first`

**Year changes:**

- Automatically create new year directory (e.g., `entries/2027/`)
