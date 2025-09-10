# Getting Started with GitHub Copilot

<img src="https://octodex.github.com/images/Professortocat_v2.png" align="right" height="200px" />

Hey fajarb!

 Mona here. I'm done preparing your exercise. Hope you enjoy! 💚

 Remember, it's self-paced so feel free to take a break! ☕️

 [![](https://img.shields.io/badge/Go%20to%20Exercise-%E2%86%92-1f883d?style=for-the-badge&logo=github&labelColor=197935)](https://github.com/fajarb/skills-getting-started-with-github-copilot/issues/1)

 ---

 ## Migrate dependencies to uv

 This repository currently lists Python dependencies in `requirements.txt` and uses a pip-based workflow. To migrate to Astral's `uv` (a fast project & dependency manager) follow these lightweight steps.

 Checklist

 - [ ] Install `uv` on your machine
 - [ ] Initialize a uv project in this repository
 - [ ] Import existing requirements
 - [ ] Lock and sync the project environment

 Common commands (run from the repository root):

 ```bash
 # install uv (official installer — choose your preferred method from https://docs.astral.sh/uv/getting-started/installation/)
 curl -LsSf https://astral.sh/uv/install.sh | sh

 # initialize a uv project (creates pyproject.toml if missing)
 uv init

 # import the existing requirements file
 # (use -c to preserve already-locked versions if you have a compiled requirements.txt)
 uv add -r requirements.txt

 # create/sync the project environment (creates .venv)
 uv sync

 # generate/update the lockfile explicitly (optional)
 uv lock

 # run the app inside the managed environment
 uv run uvicorn src.app:app --reload
 ```

 Notes

 - `uv` uses a universal `uv.lock` lockfile. Commit `pyproject.toml` and `uv.lock`.
 - `uv` prefers a local `.venv` (created automatically) — do not commit `.venv`; add it to `.gitignore`.
 - If you have separate development requirements, you can import them with `uv add --dev -r requirements-dev.in`.

 ---

 &copy; 2025 GitHub &bull; [Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/code_of_conduct.md) &bull; [MIT License](https://gh.io/mit)

 ```

