# Journal Review Skill

**Purpose**: Provide a comprehensive analysis of journal entries by orchestrating emotional analysis, therapeutic insights, and actionable summary.

**Trigger**: `/review` or `/journal-review`

## Overview

This skill orchestrates a complete journal entry review by:

1. **Running `/emotions`** (emotion-classifier skill) for emotional analysis
2. **Running `/therapy`** (therapy-toolkit skill) for therapeutic insights
3. **Synthesizing both** into a comprehensive, actionable summary

Think of this as your complete journaling companion—it coordinates deep analysis and gives you clear next steps.

## Process

**Important**: This skill references [../context.md](../context.md) for Stefan's personal context to inform the synthesis.

When this skill is invoked:

### Step 1: Run Emotion Analysis
Execute the `/emotions` skill on the current journal entry to get:
- Emotion identification and Mood Meter mapping
- Psychological insights about why emotions are present
- Impact assessment
- Navigation strategies

### Step 2: Run Therapy Analysis
Execute the `/therapy` skill on the current journal entry to get:
- Cognitive analysis (CBT)
- Emotion regulation strategies (DBT)
- Values exploration (ACT)
- Compassionate reframing (CFT)
- Parts work (IFS)
- Therapeutic action plan

### Step 3: Load Historical Context

Before synthesizing, gather context from previous journal entries:
- Look for previous `journal-review.md` files in parent directories (e.g., if reviewing `entries/2026/jan/second/`, check `entries/2026/jan/first/journal-review.md`)
- Read the most recent 1-2 previous reviews to understand ongoing patterns
- Note recurring themes, action items that were set, and patterns being tracked
- This helps identify progress, persistent challenges, and evolving dynamics

### Step 4: Synthesize Comprehensive Summary

After receiving both analyses and reviewing historical context, create an integrated summary that includes:

#### Executive Summary
2-3 sentences capturing the core themes and emotional landscape

#### Progress from Previous Entry (if applicable)
If historical context was loaded:
- Note any action items from last review that were completed or attempted
- Identify patterns that are improving or persisting
- Acknowledge growth areas
- Highlight what's changed since last entry

#### What Went Well 🌟
Celebrate strengths, positive moments, wins, gratitude, evidence of growth

Look for:
- Values-aligned actions
- Moments of self-awareness
- Resilience or coping
- Relationship highlights
- Small victories
- Progress markers

#### What Was Challenging 💭
Acknowledge struggles, pain points, difficulties

Identify:
- Emotional distress
- Difficult situations
- Unmet needs
- Relationship tensions
- Obstacles faced

#### Key Insights 💡

**Cross-reference and integrate findings:**

- **Emotional-Cognitive Connections**: How do the emotions identified (from emotion analysis) relate to the thought patterns identified (from therapy analysis)?
  - Example: "The anxiety in the Red Quadrant connects to the catastrophizing pattern identified in CBT analysis"

- **Patterns Across Frameworks**: What themes emerge across both analyses?
  - Recurring needs, values, triggers, protective mechanisms

- **Root Dynamics**: What's the deeper story when you look at emotions + thoughts + behaviors together?

- **Values & Needs**: What matters to you based on both analyses?

- **Internal Conflicts**: What parts or competing urges were identified?

#### Action Items ✅

**Synthesize and prioritize actions from both analyses:**

**Immediate (Today):**
- 2-3 most important actions you can take today
- Combine regulation strategies from emotion analysis with therapeutic practices
- Make them specific and achievable

**This Week:**
- 3-5 practices or experiments to try
- Skills to practice from DBT/ACT/etc.
- Conversations or tasks to complete

**Ongoing:**
- Long-term themes to explore
- Patterns to track
- Core beliefs or values work

#### Patterns to Watch 🔍

Based on both analyses, what patterns are worth tracking:
- Emotional patterns
- Cognitive patterns
- Behavioral patterns
- Situational triggers
- Relational dynamics

#### Recommended Practices 📚

Specific techniques tailored to this entry:
- Prioritize the most relevant practices from both analyses
- Make them concrete and actionable

#### Reflection Prompts for Next Entry

3-5 questions that:
- Build on today's insights
- Explore patterns identified
- Connect to values or growth
- Check on action items

## Output Format

**IMPORTANT**: Save the complete review to a file named `journal-review.md` in the same directory as the entry being reviewed.

For example:
- If reviewing `entries/2026/jan/first/entry.md`, save to `entries/2026/jan/first/journal-review.md`
- If reviewing `entries/2026/jan/second/entry.md`, save to `entries/2026/jan/second/journal-review.md`

Structure your synthesis as:

```markdown
# Journal Review: [Entry Date/Title]

## Executive Summary
[2-3 sentences]

---

## Emotional Analysis
[Complete output from /emotions skill]

---

## Therapeutic Analysis
[Complete output from /therapy skill]

---

## Comprehensive Summary

### 📈 Progress from Previous Entry
[If applicable - compare with previous journal-review.md]

### 🌟 What Went Well
[List with explanations]

### 💭 What Was Challenging
[List with explanations]

### 💡 Key Insights

**Emotional-Cognitive Connections:**
[How emotions and thoughts interact in this entry]

**Core Patterns:**
[Themes across both analyses]

**Values & Needs:**
[What matters, what needs attention]

**Internal Dynamics:**
[Parts, conflicts, protective mechanisms]

### ✅ Action Items

**Immediate (Today):**
1. [Action]
2. [Action]
3. [Action]

**This Week:**
1. [Action]
2. [Action]
3. [Action]

**Ongoing:**
1. [Theme]
2. [Pattern]
3. [Work]

### 🔍 Patterns to Watch
- [Pattern 1]
- [Pattern 2]
- [Pattern 3]

### 📚 Recommended Practices
- [Practice 1]
- [Practice 2]
- [Practice 3]

### Reflection Prompts for Next Entry
1. [Question]
2. [Question]
3. [Question]
```

## Integration Guidelines

When synthesizing:

1. **Don't just repeat** - Cross-reference and connect the analyses
2. **Prioritize** - Focus on most salient insights
3. **Simplify actions** - Combine overlapping suggestions into clear steps
4. **Look for patterns** - What appears in BOTH analyses?
5. **Make it actionable** - Everything should lead to clarity and next steps

## Example Integration

If emotion analysis identifies "anxiety in Red Quadrant due to uncertainty" and therapy analysis identifies "catastrophizing cognitive distortion," synthesize as:

"Your anxiety (Red Quadrant, high energy/unpleasant) is being amplified by catastrophizing thought patterns. Your mind is generating worst-case scenarios (cognitive distortion) which triggers your threat system (emotional response). The recommended approach combines nervous system regulation (4-7-8 breathing from emotion navigation) with cognitive restructuring (evidence examination from CBT) to address both the emotional activation and the thought patterns fueling it."

## Tone

- Compassionate and encouraging
- Integrative (seeing whole person)
- Actionable and clear
- Balanced (validation + growth)
- Empowering

## Related Skills

This skill orchestrates:
- [emotion-classifier](../emotion-classifier/SKILL.md) - Run directly with `/emotions`
- [therapy-toolkit](../therapy-toolkit/SKILL.md) - Run directly with `/therapy`

You can also use those skills individually when you want just one type of analysis.

## Follow-Up

After `/review`, you might:
- Run `/polish` to improve writing quality of original entry
- Focus on specific action items
- Use reflection prompts for next entry
- Track patterns over time
