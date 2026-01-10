# Journal Agents

A comprehensive journaling system with AI-powered writing assistance, emotional analysis, and therapeutic insights.

## Quick Start

### Creating a New Entry

**Option 1: Using the Skill (Recommended)**

```bash
/new-journal-entry
```

**Option 2: Using the Shell Script**

```bash
./new-entry.sh
```

Both methods will:

- Automatically determine the current year and month
- Find the next available entry name (first, second, third, etc.)
- Create the folder structure
- Create a blank `entry.md` file for you to write in

### Writing Your Entry

1. Open the created `entry.md` file
2. Write your journal entry
3. Save the file

### Processing Your Entry

After writing, you have several options:

#### Get Writing Feedback

```bash
/writing-assistant
```

Creates:

- `writing-review.md` - Grammar, style, and vocabulary feedback
- `entry-polished.md` - Polished version of your entry

#### Get Comprehensive Analysis

```bash
/journal-review
```

Creates:

- `journal-review.md` - Emotional and therapeutic analysis with:
  - Emotion identification and Mood Meter mapping
  - Cognitive patterns (CBT)
  - Emotion regulation strategies (DBT)
  - Values exploration (ACT)
  - Compassionate reframing (CFT)
  - Parts work (IFS)
  - Actionable next steps

#### Get Individual Analyses

```bash
/emotion-classifier    # Just emotional analysis
/therapy-toolkit       # Just therapeutic insights
```

## Folder Structure

```
journal-agents/
├── entries/
│   └── YYYY/
│       └── mmm/              # 3-letter month (jan, feb, mar, etc.)
│           └── entry-name/   # first, second, third, etc.
│               ├── entry.md           # Your original writing
│               ├── entry-polished.md  # Polished version
│               ├── writing-review.md  # Writing feedback
│               └── journal-review.md  # Emotional/therapeutic analysis
│
├── .claude/
│   └── skills/
│       ├── context.md              # Your personal context
│       ├── new-entry/              # Create new entries
│       ├── writing-assistant/      # Writing improvement
│       ├── journal-review/         # Comprehensive review
│       ├── emotion-classifier/     # Emotional analysis
│       └── therapy-toolkit/        # Therapeutic insights
│
├── new-entry.sh    # Shell script to create new entries
└── README.md       # This file
```

## Available Skills

### `/new-journal-entry`

Creates a new journal entry folder with proper date-based structure and naming.

### `/writing-assistant`

Analyzes your writing for:

- Grammatical errors
- Style issues
- Vocabulary enhancement
- Structural improvements

Outputs a polished version that maintains your voice while improving clarity and eloquence.

### `/journal-review`

Comprehensive analysis that:

- Runs emotional analysis (emotions, Mood Meter, psychological insights)
- Runs therapeutic analysis (CBT, DBT, ACT, CFT, IFS)
- Synthesizes insights across frameworks
- Provides actionable next steps
- Tracks patterns across multiple entries

### `/emotion-classifier`

Focused emotional analysis using Yale's Mood Meter framework:

- Identifies emotions with intensity ratings
- Maps to Mood Meter quadrants
- Explains why emotions are present
- Provides navigation strategies

### `/therapy-toolkit`

Therapeutic analysis using evidence-based modalities:

- **CBT**: Cognitive distortions and reframing
- **DBT**: Emotion regulation and distress tolerance
- **ACT**: Values clarification and committed action
- **CFT**: Self-compassion and reducing shame
- **IFS**: Parts work and internal dialogue

## Workflow Examples

### Daily Journaling

```bash
# 1. Create new entry
./new-entry.sh

# 2. Write in entries/2026/jan/second/entry.md

# 3. Get comprehensive analysis
/journal-review entries/2026/jan/second/entry.md

# 4. Review insights and action items in journal-review.md
```

### Focus on Writing Improvement

```bash
# 1. Create new entry
/new-journal-entry

# 2. Write in entry.md

# 3. Get writing feedback
/writing-assistant entries/2026/jan/second/entry.md

# 4. Review writing-review.md for improvements
# 5. See polished version in entry-polished.md
```

### Quick Emotional Check-In

```bash
# 1. Create new entry
/new

# 2. Write quick entry about your feelings

# 3. Get emotion analysis only
/emotion-classifier entries/2026/jan/second/entry.md
```

## Context Management

The system maintains context across journal entries:

1. **Personal Context** (`.claude/skills/context.md`)

   - Your background, life themes, and patterns
   - Updated as patterns emerge from entries

2. **Historical Context**

   - When reviewing a new entry, the system automatically:
     - Reads previous `journal-review.md` files
     - Tracks recurring patterns
     - Checks on action items from previous entries
     - Notes progress and changes over time

3. **Continuous Learning**
   - Each review builds on previous insights
   - Patterns are tracked across multiple entries
   - Growth areas are acknowledged
   - Persistent challenges are noted

## Tips

### For Best Results

**Writing:**

- Write freely without worrying about grammar/style initially
- Be honest and authentic
- Include details about thoughts, feelings, and events
- Don't rush - take time to reflect

**Using Analysis:**

- Read the full review, not just action items
- Notice patterns across multiple entries
- Actually try the recommended practices
- Use reflection prompts for next entry

**Maintaining Momentum:**

- Create entries regularly (daily or as needed)
- Follow up on action items from previous reviews
- Track your progress over time
- Adjust based on what works for you

### Month Transitions

When a new month starts, the system automatically:

- Creates a new month folder (e.g., `entries/2026/feb/`)
- Starts with "first" for the new month
- Maintains access to previous months for context

### Year Transitions

When a new year starts:

- New year folder is created automatically (e.g., `entries/2027/`)
- Previous year remains accessible
- Context continues to carry forward

## Customization

### Adding Your Own Context

Edit `.claude/skills/context.md` to add:

- Important life events
- Therapy insights
- Personal goals
- Patterns you want to track

### Modifying Skills

Each skill has a `SKILL.md` file in its directory that defines behavior. You can customize:

- Analysis depth
- Output format
- Specific frameworks used
- Tone and approach

## Technical Details

**Built With:**

- Claude Code CLI
- Claude Agent SDK
- Evidence-based therapeutic frameworks
- Yale Mood Meter
- Markdown for portability

**Data Privacy:**

- All data stored locally on your machine
- No external services except Claude API
- Full control over your journal entries

## Support

For issues or questions:

- Check skill documentation in `.claude/skills/[skill-name]/SKILL.md`
- Review this README
- Modify skills as needed for your use case

## License

Personal use. Modify as needed for your journaling practice.
