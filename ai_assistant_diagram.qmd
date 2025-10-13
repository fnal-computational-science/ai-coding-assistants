---
title: "AI Coding Assistant Ecosystem Diagrams"
format:
  html:
    embed-resources: true
---

# AI Coding Assistant Ecosystem Diagrams

## High-Level Relationships (UML)

```{mermaid}
classDiagram
    class IDE {
    }
    note for IDE "Integrated Development Environments<br/>like VS Code, PyCharm,<br/>Emacs + plugins, and Vim + plugins"
    
    class Provider {
    }
    note for Provider "Github Copilot and Ollama"
    class CLITool {
    }
    note for CLITool "Command Line Interfaces<br/>like Gemini and Claude CMD"   

    class LanguageModel {      
    }
    note for LanguageModel "Claude Sonnet 4.5 and GPT-4.1"
    

    IDE --> Provider : API services
    CLITool --> Provider : API services
    CLITool --> LanguageModel : prompt orchestration 
    Provider --> LanguageModel : prompt orchestration
```

The original, all-in-one diagram has been split into three focused Mermaid views for clarity:

- [`ai_ide.md`](./ai_ide.md) — IDE-centric integrations with AI coding assistants and their underlying models (no editors or CLI tooling).
- [`ai_editors.md`](./ai_editors.md) — Notebook and lightweight editor experiences powered by AI assistants.
- [`ai_cli.md`](./ai_cli.md) — Command-line tooling that surfaces AI assistance directly in the terminal, plus the supporting services and models.

Open any of the files above in VS Code (Markdown preview) or the [Mermaid Live Editor](https://mermaid.live/) to render the diagrams individually. This layout keeps each context scoped and accessible while still covering the full ecosystem across the three documents.
