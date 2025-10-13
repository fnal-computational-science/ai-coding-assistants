# AI Coding Assistant Ecosystem — Editors & Notebooks

Paste the diagram below into any Mermaid-compatible viewer (for example, VS Code Markdown preview or the [Mermaid Live Editor](https://mermaid.live/)) to see the relationships rendered visually.

```mermaid
graph TD
    subgraph Editors_and_Notebooks
        Notebooks[Jupyter & Web Editors]
        Vim[Vi / Vim]
        Emacs[GNU Emacs]
    end

    subgraph AI_Coding_Assistants
        Copilot[GitHub Copilot]
        Cursor[Cursor]
        Tabnine[Tabnine]
    end

    subgraph AI_Models
        GPT4o[GPT-4o / GPT-4 Turbo]
        Claude[Claude 3.x]
        Gemini[Gemini 1.5 Pro]
        LocalLLMs[Local / Self-Hosted LLMs]
    end

    Notebooks --> Copilot
    Vim --> Copilot
    Vim --> Tabnine
    Emacs --> Copilot
    Emacs --> Tabnine

    Copilot --> GPT4o
    Copilot --> Claude
    Cursor --> GPT4o
    Cursor --> Claude
    Tabnine --> LocalLLMs
    Tabnine --> GPT4o
```
