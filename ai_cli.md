# AI Coding Assistant Ecosystem — CLI Experiences

Paste the diagram below into any Mermaid-compatible viewer (for example, VS Code Markdown preview or the [Mermaid Live Editor](https://mermaid.live/)) to see the relationships rendered visually.

```mermaid
graph TD
    subgraph CLI_Tools
        GeminiCLI[Gemini CLI]
        CopilotCLI[GitHub Copilot CLI (gh extension)]
    end

    subgraph AI_Services
        GeminiService[Gemini API]
        CopilotService[GitHub Copilot Service]
    end

    subgraph AI_Models
        Gemini[Gemini 1.5 Pro]
        GPT4o[GPT-4o / GPT-4 Turbo]
    end

    subgraph Terminal_Workflows
        TerminalChat[Interactive chat replies]
        CodeSnippets[On-demand code snippets]
        CommandHints[Command and shell suggestions]
    end

    GeminiCLI --> GeminiService
    GeminiService --> Gemini

    CopilotCLI --> CopilotService
    CopilotService --> GPT4o

    GeminiCLI --> TerminalChat
    CopilotCLI --> TerminalChat
    CopilotCLI --> CodeSnippets
    CopilotCLI --> CommandHints
    GeminiCLI --> CodeSnippets
```
