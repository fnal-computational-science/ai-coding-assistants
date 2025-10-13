# AI Coding Assistant Ecosystem — IDE Integrations

Paste the diagram below into any Mermaid-compatible viewer (for example, VS Code Markdown preview or the [Mermaid Live Editor](https://mermaid.live/)) to see the relationships rendered visually.

```mermaid
graph TD
    subgraph IDEs
        VSCode[Visual Studio Code]
        JetBrains[JetBrains IDEs]
    end

    subgraph AI_Coding_Assistants
        Copilot[GitHub Copilot]
        CodeWhisperer[AWS CodeWhisperer]
        Cursor[Cursor]
        Tabnine[Tabnine]
    end

    subgraph AI_Models
        GPT4o[GPT-4o / GPT-4 Turbo]
        Claude[Claude 3.x]
        Gemini[Gemini 1.5 Pro]
        Mistral[Mistral Large]
        LocalLLMs[Local / Self-Hosted LLMs]
    end

    VSCode --> Copilot
    VSCode --> CodeWhisperer
    VSCode --> Cursor
    VSCode --> Tabnine
    JetBrains --> Copilot

    Copilot --> GPT4o
    Copilot --> Claude
    CodeWhisperer --> Gemini
    Cursor --> GPT4o
    Cursor --> Claude
    Tabnine --> LocalLLMs
    Tabnine --> GPT4o
```
