# Working on this CV

## Source and purpose

- `Mikhail_Vorobev_CV.yaml` is the canonical English master CV, using RenderCV.
- Keep the master comprehensive. It is the source for future application-specific CVs, not a document constrained to one page.
- `old/resume.tex`, `old/resume_en.pdf`, and `old/resume_ru.pdf` are legacy versions. Use them for reference; edit them only when requested.
- The background spans compiler engineering, backend/distributed systems, and embedded development. Do not assume a single target role without application context.

## Preserve information and accuracy

- Preserve every role, project, course, educational detail, skill, date, link, and substantive contribution in the master.
- Do not remove information because it is old, seems less relevant, or takes space. Deletions from the master require an explicit user request.
- Improve grammar, organization, and clarity without losing facts. Check against the Git baseline when restructuring.
- Present coursework through what was implemented, while retaining the course name, provider, dates, and academic context. Do not imply coursework was production employment.
- Keep the full skills inventory in the master; group it for readability. Application copies may use a shorter, relevant selection.
- Never invent metrics, responsibilities, business outcomes, proficiency levels, qualifications, or dates. Do not turn participation into sole ownership or leadership.
- Prefer concrete contributions and outcomes. Use metrics when supported; a number is not required in every bullet.
- Ask for missing facts when they materially improve the CV. Keep questions or TODOs outside the rendered CV.

## Tailoring applications

- Keep the master intact and create a separate YAML copy for a specific application.
- Use the target job description to select, reorder, and compress content in that copy.
- Retain relevant technical detail: compiler stages and optimizations, backend integrations, concurrency, or firmware work as appropriate.
- There is no automatic one-page requirement. Follow explicit application limits and prioritize readable, relevant content.
- Give application copies descriptive names under `applications/` and render them into separate subdirectories of `rendercv_output/`.
- Do not create speculative application variants before a target is provided.

## Rendering and verification

- Use the existing RenderCV setup and built-in templates. The custom `markdown/` template directory was intentionally removed; do not recreate it unless requested.
- Render the master from the repository root:

  ```sh
  rendercv render Mikhail_Vorobev_CV.yaml
  ```

- Generate the master PDF as `Mikhail_Vorobev_CV.pdf` in the repository root. Reuse `rendercv_output/` for PNG, Markdown, HTML, and Typst files. Do not introduce a second output folder for the master.
- After content or layout changes, render again and visually inspect every PDF page. Check clipping, wrapping, spacing, section breaks, and legibility.
- Check extracted PDF text for reading order and missing content; check Markdown/HTML exports for unresolved template syntax.
- Track the root `Mikhail_Vorobev_CV.pdf` in Git; keep other generated output ignored. Do not publish, upload, or send the CV unless requested.

## Git and review

- Preserve the existing repository history and unrelated user changes.
- Keep source changes reviewable through VS Code's built-in Git diff. Use tracked baselines rather than temporary backup folders as the review workflow.
- Leave edits uncommitted unless the user asks for a commit. Do not stage unrelated changes.
- Keep generated files other than the root master PDF, temporary files, and local editor settings out of commits using `.gitignore`.

## Documentation and research

- Use Context7 MCP whenever answering questions about a library, framework, SDK, API, CLI tool, or cloud service, including syntax, configuration, migrations, setup, and library-specific debugging.
- Start with `resolve-library-id` using the library name and the user's question, unless the user provides an exact `/org/project` library ID.
- Select the best match using name, relevance, source reputation, snippet coverage, and benchmark score; use a version-specific ID when available and relevant. Retry with a better query if results are unsuitable.
- Call `query-docs` with the selected ID and the specific question, then use the fetched documentation. Prefer Context7 over web search for library documentation.
- Context7 is not needed for prose editing, general programming concepts, ordinary refactoring, scripts written from scratch, business-logic debugging, or code review.
- When researching hiring practices, prefer current employer guidance, official ATS documentation, and credible career services. Distinguish documented behavior from editorial recommendations.
- Treat ATS advice as system-specific; do not claim universal keyword thresholds or guaranteed parsing.

## Communication

- Keep updates and final summaries short. The user prefers concise explanations.
- State what changed and how it was verified; link the updated CV when relevant.
- Do not silently narrow the CV's scope or remove information while refining its presentation.
