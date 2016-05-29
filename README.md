Dr. Jekyll: A scholarly website template.
===================

This Jekyll template is meant for young (or established) scholars who would like to set up a website quickly and have it remain stable in the future.

The template includes a built in bibliography using bibtex format that you can use to update your incredibly long publication list (knock on wood).

___

## Key Elements
The template comes with the following features:

1. Easily adjust the title, url, and favicon in the `config.yml` file.
2. Change the "About Me" section, the "Courses" list, and "Contact Me" info in the `_data/settings.yml` file.
3. A bibliography can be built easily using a `.bib` file and `bibtex`.
4. Easily create course pages and host files for your classes.

---
## Use
To use this template, you need to build the site locally. The [Jekyll-Scholar](https://github.com/inukshuk/jekyll-scholar) plugin is not supported by Github.

Here is a brief description of the necessary steps to customize your site:

1. Download the repository.
2. Update the `config.yml` file with your preferred settings for title, url, etc.
3. Update the `_data/settings.yml` file with your "About Me" blurb, your course list, and your contact information.
4. For each course, you can either link to an external site or create a new page. To create a new course page, copy the `temp_course` folder and update the necessary information (add lecture slides, change the front matter in the `index.html` file, change folder names, etc.).
5. Put any files (e.g. CV, pdf's of articles, etc.) in the `assets/files` folder.
6. If you would like to change the bibliography style, add your custom `.csl` file to the `assets\bib` folder.
7. Update the `_mybib.bib` file to include all of your amazing articles.
8. Change the bio-photo (200 x 220) and the background image (2634 x 1756 ... although you don't necessarily need such a high resolution image).
9. Update the colors in `assets/css/2-base/_vars.sass`. In particular, `accent-color` is the most used (if not the only...).

Once the site looks the way you want it, you need to push it to Github. To build the site locally and push the necessary files, do the following (note: this assumes you already have a Github pages site and associated local repository. If not, check out [this page for directions](https://pages.github.com/).):

0. Ensure that your customized DrJekyll folder is ***outside*** of the Github pages repository.
1. Copy your local github repository to a safe place (because we are going to delete it).
2. `cd` into your local repository and delete the files:

  ```
  git rm -rf .
  ```
3. `cd` into your DrJekyll folder and build it using Jekyll:

  ```
  jekyll build
  ```
4. Using either your GUI or the command line, copy the contents of the `DrJekyll/_site` folder into your local Github Pages repository.
5. Create an empty file in your local Github Pages repository titled `.nojekyll`.
6. Follow your usual Github push steps. For me I run the following:

  ```
  git status
  git add --all
  git commit -m "Publishing my sweet website."
  git push origin master
  ```

Now, enjoy your handiwork!

---

## A Note On The bibliography
The included sample `.bib` file includes the following bibliography entry:

```
@article{jekyll1885schizo,
  title={Home Remedies for Multiple Personality Disorders},
  author={Jekyll, Henry},
  year={1885},
  URL={https://alongsite.com/HOO.pdfLINK:arXiv;https://alongsite.com/BOO.pdfLINK:NBER;/assets/files/paper.pdfLINK:PDF}
}
```
This looks like a typical entry, ***except the URL***. If your paper is hosted in several locations, you can link to all of those places using this line.

The format is `urlLINK:linktext;urlLINK:linktext`, where you need to replace the link `url` and the `linktext` with whatever you would like. Each url needs to be seperated by a semicolon, `;`.

## Tracking
If you are a self obsessed sociopath or insecure graduate student, like myself, you can easily add analytics by creating a Google Tag Manager account and pasting the container code onto any of the `index.html` pages. Another nifty idea would to be to create an include for analytics, but since the site is quite simple, I'll leave this to you.
