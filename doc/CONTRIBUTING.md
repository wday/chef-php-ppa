# Contributing
So, you want to contribute to this cookbook? Welcome! This project has been
specifically created to support the [Cornerstone Project](https://github.com/oakensoul/Cornerstone/)
which is used for a number of ZF2 applications, so please read through the following
documentation to get acquainted with the project.

## The Basics
This project uses the "GitHub" branching model. If you'd like to read more on
some of the various branching models, the two big Elephpants in the room are
the [GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html) and the
[Gitflow](http://nvie.com/posts/a-successful-git-branching-model/) branching model.

## <a name="bug-reports"></a>Bug Reports
When the inevitable happens and you discover a bug in the documentation or the
code, please follow the process below to help us out.

* Search the existing issues to see if the issue has already been filed
* Make sure the issue is a bug and not simply a preference
* If you've found a new issue, please then file it

From that point, if you're interest in contributing some code, ask in the issue
if we're willing to accept a failing test case, and/or a fix. If we are, then
follow the steps for contributing and we can go from there!

## <a name="feature-requests"></a>Feature Requests
With a module like Cornerstone, every new feature request should be scrutinized
to make sure we're not going to experience feature bloat or break existing users.
Every new feature should fit the Vision for the project. If you've got an idea
for a new feature and you feel it fits the vision, file an issue and we can discuss it.

Make sure any feature request you make fits the
[INVEST](http://en.wikipedia.org/wiki/INVEST_(mnemonic) mnemonic.

## <a name="pull-requests"></a>Pull Requests
A well written pull request is a huge piece of the success of any open source project.
Please make sure to take the time to think out the request and document/comment well.
A good pull request should be the smallest successful feature, akin to the
[INVEST](http://en.wikipedia.org/wiki/INVEST_(mnemonic) mnemonic used in scrum.

Make sure if you're not a project member and just getting started that you have a
related issue for your Pull Request and that a project owner approves the work
before putting the effort in to make the change. Most of the time as long as you're
following the project vision, we'll welcome additions, but it's better to be save
than sorry.

Also, make sure your pull request is built with a compilation of great
[commit messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).

The [Bower](https://github.com/bower/bower/blob/master/CONTRIBUTING.md) project has
awesome instructions for Pull Requests, I've added a copy here.

Adhering to the following this process is the best way to get your work
included in the project:

1. [Fork](http://help.github.com/fork-a-repo/) the project, clone your fork,
   and configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/Cornerstone
   # Navigate to the newly cloned directory
   cd Cornerstone
   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/oakensoul/Cornerstone
   ```

2. If you cloned a while ago, get the latest changes from upstream:

   ```bash
   git checkout master
   git pull upstream master
   ```

3. Create a new topic branch (off the main project development branch) to
   contain your feature, change, or fix:

   ```bash
   git checkout -b <topic-branch-name>
   ```

4. Make sure to update, or add to the tests when appropriate. Patches and
   features will not be accepted without tests. Run `phpunit` and `casper`
   tests as relevant to make sure all tests pass after you've made changes.

5. Commit your changes in logical chunks. Please adhere to these [git commit
   message guidelines](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
   or your code is unlikely be merged into the main project. Use Git's
   [interactive rebase](https://help.github.com/articles/interactive-rebase)
   feature to tidy up your commits before making them public.

6. Locally merge (or rebase) the upstream development branch into your topic branch:

   ```bash
   git pull [--rebase] upstream master
   ```

7. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

8. [Open a Pull Request](https://help.github.com/articles/using-pull-requests/)
    with a clear title and description.

9. If you are asked to amend your changes before they can be merged in, please
   use `git commit --amend` (or rebasing for multi-commit Pull Requests) and
   force push to your remote feature branch. You may also be asked to squash
   commits.

**IMPORTANT**: By submitting a patch, you agree to license your work under the
same license as that used by the project.
