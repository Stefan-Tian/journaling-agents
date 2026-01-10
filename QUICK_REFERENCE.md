# Quick Reference Card

## Essential Commands

| Command | What It Does |
|---------|-------------|
| `./new-entry.sh` or `/new` | Create new journal entry for today |
| `/polish` | Get writing feedback + polished version |
| `/review` | Get comprehensive emotional & therapeutic analysis |

## Complete Skill List

| Skill | Shorthand | Purpose |
|-------|-----------|---------|
| `/new-entry` | `/new` | Create new entry folder |
| `/writing-assistant` | `/polish` | Writing improvement |
| `/journal-review` | `/review` | Comprehensive analysis |
| `/emotion-classifier` | `/emotions` | Emotional analysis only |
| `/therapy-toolkit` | `/therapy` | Therapeutic insights only |

## Typical Workflow

```bash
# Morning/Evening
./new-entry.sh                                    # Creates entries/2026/jan/second/

# Write your entry in: entries/2026/jan/second/entry.md

# Get analysis
/review entries/2026/jan/second/entry.md         # Creates journal-review.md

# Optional: Get writing feedback
/polish entries/2026/jan/second/entry.md         # Creates writing-review.md + entry-polished.md
```

## File Structure per Entry

```
entries/2026/jan/second/
├── entry.md              # Your original writing
├── entry-polished.md     # Polished version (from /polish)
├── writing-review.md     # Grammar/style feedback (from /polish)
└── journal-review.md     # Emotional/therapeutic analysis (from /review)
```

## What Each Analysis Provides

### `/polish` - Writing Assistant
- ✅ Grammar corrections
- ✅ Style improvements
- ✅ Vocabulary enhancements
- ✅ Polished rewrite
- ⏱️ Takes: ~30 seconds

### `/review` - Journal Review
- ✅ Emotion identification (Mood Meter)
- ✅ Cognitive patterns (CBT)
- ✅ Regulation strategies (DBT)
- ✅ Values alignment (ACT)
- ✅ Self-compassion (CFT)
- ✅ Parts work (IFS)
- ✅ Action items
- ✅ Progress tracking
- ⏱️ Takes: ~2 minutes

### `/emotions` - Emotion Classifier
- ✅ Emotion detection
- ✅ Mood Meter mapping
- ✅ Psychological insights
- ✅ Navigation strategies
- ⏱️ Takes: ~45 seconds

### `/therapy` - Therapy Toolkit
- ✅ CBT analysis
- ✅ DBT skills
- ✅ ACT values work
- ✅ CFT compassion
- ✅ IFS parts work
- ⏱️ Takes: ~90 seconds

## Quick Tips

**Writing Freely**
- Don't edit while writing
- Include thoughts, feelings, events
- Be honest and specific
- Details help analysis

**Using Analysis**
- Read the full review
- Try 1-2 action items
- Use reflection prompts
- Track patterns over time

**Staying Consistent**
- Journal regularly
- Review previous entries
- Follow up on action items
- Notice what works

## Month Names

| Full | 3-Letter |
|------|----------|
| January | jan |
| February | feb |
| March | mar |
| April | apr |
| May | may |
| June | jun |
| July | jul |
| August | aug |
| September | sep |
| October | oct |
| November | nov |
| December | dec |

## Entry Names (Auto-Sequential)

first → second → third → fourth → fifth → sixth → seventh → eighth → ninth → tenth → eleventh → twelfth → ...

## Troubleshooting

**"Skill not found"**
- Make sure you're in the project directory
- Check that skill folders exist in `.claude/skills/`

**"File not found"**
- Verify the entry path is correct
- Use tab completion to avoid typos

**"No previous context"**
- Normal for first entry of month
- Context builds after first review

## Keyboard Shortcuts (in VSCode)

- `Cmd+P` - Quick file open
- `Cmd+Shift+P` - Command palette
- `Cmd+B` - Toggle sidebar
- `Cmd+J` - Toggle terminal

## Resources

- Full documentation: `README.md`
- Personal context: `.claude/skills/context.md`
- Skill details: `.claude/skills/[name]/SKILL.md`

---

**Remember**: This is your personal reflection space. There's no "right way" to journal—experiment and find what works for you! 🌱
