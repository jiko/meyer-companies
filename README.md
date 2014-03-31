The Meyer Companies
========

Background texture courtesy of [Subtle Patterns](http://subtlepatterns.com)

[GitHub Pages][ghp] hosts this site. You will need [Git][git] or a [GitHub client][client] installed to work on this site on your local machine. GitHub uses the [Jekyll static-site generator][jekyll] to turn these files into a static website.

To use Jekyll on your local machine, you will need Ruby and RubyGems installed. Then run `gem install bundler` followed by `bundle install` to install all of the gems used to develop this site. I have used [Compass][compass] to ease CSS authoring, and the Compass extension [FitText][ft].

To use the Makefile, you need GNU make, which most Linux distributions provide, or on Mac OS X comes with Xcode and the Mac development tools. I use Make as a task manager. The available tasks are: `make clean`, which will delete the Sass cache along with Jekyll's build directory `_site`; `make start`, which starts the Jekyll development server and a Compass watch; `make stop` stops these processes; and `make status` will show you if they are running or not.

[ghp]: http://pages.github.com/ "Websites for you and your projects"
[git]: http://git-scm.com/downloads "Check the GUI Clients page"
[client]: http://windows.github.com/ "GitHub for Windows"
[jekyll]: http://jekyllrb.com/
[compass]: http://compass-style.org/
[ft]: https://github.com/bookcasey/fittext
