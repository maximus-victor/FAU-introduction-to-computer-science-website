Presentations are generated with
[emacs-reveal](https://gitlab.com/oer/emacs-reveal)
and make use of the HTML presentation framework
[reveal.js](https://revealjs.com/).

- Key bindings and navigation
  - Press “?” to see key bindings of reveal.js
  - In general, “n” and “p” move to next and previous slide; mouse
    wheel works as well
  - Up/down (swiping, arrows) move within sections,
    left/right jump between sections (type “o” to see what is where)
  - Type slide’s number followed by Enter to jump to that slide
  - Browser history (buttons, Alt-CursorLeft, Alt-CursorRight; may
    need /two/ attempts to work)
  - Zoom with Ctrl-Mouse or Alt-Mouse
  - Search with Ctrl-Shift-F
- PDF export
  - Why do you want to do this?
    - You may want to download and annotate/enrich source files instead
      - [Org mode](https://orgmode.org/), which is plain text
  - Change the URL by adding ~?print-pdf~ after ~.html~,
    then print to PDF file (usually, Ctrl-p)
  - Alternatively, depending on the specific project, PDFs might also
    have been generated via LaTeX from org source files.  If
    available, those PDF versions are accessible by replacing
    ~.html~ in a presentation’s URL with ~.pdf~
- Offline use
  - Presentations can be downloaded from build pipelines of
    source projects as self-contained zip archives
    - Extract contents and open local HTML file(s) in browser
    - E.g., for a course on Operating Systems, go to
      [its pipelines page](https://gitlab.com/oer/OS/pipelines),
      click on download icon of most recent pipeline
  - Alternatively, clone source repository and build presentations locally
- Audio
  - If audio is embedded, [the free Ogg format](https://en.wikipedia.org/wiki/Ogg) is used
    - Based on student feedback, playback does /not/ start automatically
      - See [compatibility and known issues of the underlying audio plugin](https://github.com/rajgoel/reveal.js-plugins/tree/master/audio-slideshow#user-content-compatibility-and-known-issues)
      - [Firefox](https://www.mozilla.org/en-US/firefox/),
        seems to work everywhere
    - Audio controls are shown at bottom left (use right-click for
      more controls such as Play Speed)
- Notes
  - Slides contain additional notes as plain text if you see the
    folder icon
    - Press “v” to open the “courseware view” or click on that icon or
      press “s” to see the “speaker notes view”
      - For the speaker notes view you need to allow pop-ups
      - If the pop-up window does not work, you may need to press “s”
        twice or close the pop-up window once
  - If the slide contains audio, the notes are a transcript of the
    audio’s text
- Links
  - In presentations, internal and external links (the former are also
    called relative, while the latter embed a domain in the URL) are styled
    differently
    - Different colors for internal (blue) and external (green) links
      - Internal links that stay within the presentation come with
        additional indicators whether they point to a previous (◂) or
        an upcoming (▸) slide
    - Special link icon for “non-local” links
      - E.g., in this
        [external link to a page explaining external links](https://moz.com/learn/seo/external-link),
        which are typically served by independent organizations with
        their own agendas, with or without their own privacy policies
      - But also for links between different presentations (in
        particular, this allows to recognize forward references, which
        may be safely ignored upon first contact)
    - In summary, presentations (not this page) use four link styles:
      - External (green with icon)
      - Relative into different presentation (blue with icon)
      - Relative within presentation (blue), either with backward (◂) or
        forward (▸) indicator

The document [CONTRIBUTING.org](https://gitlab.com/EinGartenzwerg/IntroCS/-/blob/master/CONTRIBUTING.org)
contains hints on how to provide feedback or contribute improvements.

