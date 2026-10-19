# My CV

`Mikhail_Vorobev_CV.yaml` is the canonical English master CV. It preserves the
full background across compiler engineering, backend systems, embedded
development, education, coursework, projects, and teaching.

Render from the repository root using the existing RenderCV 2.8 installation:

```sh
rendercv render Mikhail_Vorobev_CV.yaml
```

The PDF, page PNGs, Markdown, HTML, and Typst source are generated in
`rendercv_output/`, which is ignored by Git. The built-in templates are used except
for `classic/Header.j2.typ`, which places four contacts above location and languages.
After changes, inspect every PDF page and check the extracted text and exports.

`resume.tex`, `resume_en.pdf`, and `resume_ru.pdf` are legacy references.
Keep the master comprehensive; create a separate YAML under `applications/`
when tailoring for a specific job, with its exports in a separate subdirectory
of `rendercv_output/`.
