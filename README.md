# jsonresume-container

[jsonresume](https://jsonresume.org) CLI and a few themes in a Docker container.

## Usage

### Serve

`docker run -i --rm -p 4000:4000 -v /c/temp:/temp jsonresume serve -r /temp/resume.json --theme elegant`

Then browse [http://localhost:4000/].

### Export

`docker run -t --rm -v /c/temp:/temp jsonresume export -r /temp/resume.json /temp/resume.html`

`docker run -t --rm -v /c/temp:/temp jsonresume export -r /temp/resume.json --theme paper /temp/resume.pdf`

## Caveats

Exporting to pdf with default theme (even) does not work (use flat instead).

## References

Various workarounds were needed to make exporting to html and pdf work.

- [https://github.com/jsonresume/resume-cli/issues/408#issuecomment-1060029796]
- [https://github.com/puppeteer/puppeteer/issues/379#issuecomment-334447389]
- [https://github.com/puppeteer/puppeteer/issues/3994#issuecomment-524396092]
- [https://github.com/jsonresume/resume-cli/issues/564#issuecomment-857673144]
