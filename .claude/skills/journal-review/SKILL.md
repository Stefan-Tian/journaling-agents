---
name: journal-review
description: Comprehensive journal analysis combining emotional, therapeutic, and actionable insights
---

## Overview

This skill orchestrates a complete journal entry review by:

1. **Analyzing emotions** (Yale Mood Meter framework)
2. **Applying therapeutic insights** (CBT/DBT/ACT/CFT - focused on what's relevant)
3. **Exploring relationships** (if relationship content is present)
4. **Depth psychology lens** (shadow, archetypes, individuation)
5. **Synthesizing** into a concise, actionable summary

**Important**: This skill references [../context.md](../context.md) for Stefan's personal context.

## Process

### Step 1: Read and Assess Content

Read the journal entry and identify which domains are most relevant:
- **Emotional content**: Always analyze (emotion-classifier)
- **Cognitive/behavioral struggles**: Apply therapy-toolkit
- **Relationship themes**: Apply relationship-insights
- **Dreams, symbols, shadow material**: Apply depth-psychology

Only run the skills that are relevant to the entry's content.

### Step 2: Run Relevant Skills

Based on assessment, selectively run:
- `/emotion-classifier` - Always run for emotional landscape
- `/therapy-toolkit` - If cognitive distortions, emotional overwhelm, or behavioral struggles present
- `/relationship-insights` - If dating, relationships, attachment, or intimacy themes present
- `/depth-psychology` - If dreams, recurring patterns, shadow projections, or meaning/purpose questions present

### Step 3: Load Historical Context

Before synthesizing:
- Check for previous `journal-review.md` files in earlier entries
- Note recurring themes, previous action items, and patterns
- Track progress and evolution

### Step 4: Synthesize Integrated Summary

Create a **concise, integrated summary** (NOT a copy-paste of each skill's output).

## Output Structure

**IMPORTANT**: Save to `journal-review.md` in the same directory as the entry.

```markdown
# Journal Review: [Date/Title]

## At a Glance
[2-3 sentence executive summary: emotional state, core theme, key insight]

---

## Emotional Landscape

**Primary Emotions**: [Emotions + Mood Meter quadrant]
**Energy Level**: [High/Low] | **Pleasantness**: [Pleasant/Unpleasant]

**What's Driving This**:
[Brief psychological insight - why these emotions now]

---

## Key Patterns

### Cognitive/Behavioral
[Only if relevant - key thought patterns, distortions, or behavioral dynamics]

### Relational
[Only if relevant - attachment patterns, relationship dynamics]

### Depth/Shadow
[Only if relevant - shadow material, archetypal patterns, individuation themes]

---

## Integrated Insights

**The Core Theme**:
[What's the deeper story when you connect the dots?]

**Cross-Framework Connections**:
[How do emotion + cognition + relationships + unconscious relate?]

**Growth Edge**:
[What's being asked of you right now?]

---

## Progress Check
[If previous reviews exist]

**Since Last Entry**:
- [What's shifted or evolved]
- [Action items completed/attempted]
- [Patterns improving or persisting]

---

## What Went Well
- [Strength, win, or positive moment]
- [Evidence of growth or values-alignment]

## What Was Challenging
- [Difficulty or struggle acknowledged]
- [What needs attention]

---

## Action Items

**Today**:
1. [Specific, doable action]
2. [Specific, doable action]

**This Week**:
1. [Practice or experiment]
2. [Conversation or task]

**Ongoing**:
- [Theme to continue exploring]

---

## Practices to Try

[2-3 specific practices tailored to this entry, drawing from relevant frameworks]

---

## Reflection Prompts

1. [Question that builds on today's insights]
2. [Question about patterns or growth]
3. [Question for next entry]
```

## Integration Guidelines

### What Makes This Different

**DO**:
- Synthesize and connect across frameworks
- Prioritize the most salient insights
- Keep it concise and actionable
- Cross-reference: How do emotions relate to thoughts relate to relationships relate to shadow?
- Focus on 2-3 key insights, not exhaustive analysis

**DON'T**:
- Copy-paste full outputs from each skill
- Repeat the same insight in different sections
- Include every possible framework when only some apply
- Create lengthy, redundant analyses

### Example Integration

If an entry contains anxiety about a date:
- **Emotion**: Anxiety (Red Quadrant, high energy/unpleasant)
- **Cognitive**: Catastrophizing ("they won't like me")
- **Attachment**: Anxious attachment activated
- **Shadow**: Fear of rejection = disowned vulnerability

**Integrated Insight**: "Your anxiety before the date reflects an anxious attachment pattern being triggered. The catastrophizing ('they won't like me') is your mind's way of protecting you from potential rejection - but it's also activating your shadow (the vulnerable part that fears being unlovable). The path forward involves both nervous system regulation (breathing to calm the Red Quadrant activation) and compassionate acknowledgment of the vulnerable part that fears rejection."

## Tone

- Compassionate but concise
- Integrative (seeing whole person)
- Actionable and clear
- Empowering, not prescriptive

## Related Skills

This skill can orchestrate:
- [emotion-classifier](../emotion-classifier/SKILL.md)
- [therapy-toolkit](../therapy-toolkit/SKILL.md)
- [relationship-insights](../relationship-insights/SKILL.md)
- [depth-psychology](../depth-psychology/SKILL.md)

You can also use these skills individually for focused analysis.

## Follow-Up

After `/journal-review`, you might:
- Run `/writing-assistant` to polish the original entry
- Focus on specific action items
- Use reflection prompts for next entry
