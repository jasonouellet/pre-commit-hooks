# Pre-Commit Hooks

[![License][license-image]][license-url]
[![Pre-Commit][pre-commit-image]][pre-commit]
[![Release][release-image]][release-url]

A collection of custom, lightweight Git `pre-commit` hooks designed to enforce code quality and prevent unwanted patterns before committing.

For more information on `pre-commit`, visit [pre-commit.com][pre-commit].

## 🛠 Available Hooks

| Hook ID            | Description                                                          | Default Files           |
| :----------------- | :------------------------------------------------------------------- | :---------------------- |
| `check-todo-fixme` | Prevents committing temporary `TODO_FIXME` markers in your codebase. | All text files (`text`) |

## 🚀 How to Use

Add the following configuration to your project's `.pre-commit-config.yaml`:

```yaml
# Example .pre-commit-config.yaml
repos:
  - repo: https://github.com/jasonouellet/pre-commit-hooks
    rev: v0.1.0
    hooks:
      - id: check-todo-fixme
```
      
Then, ensure [pre-commit][pre-commit] is installed and updated in your local Git repository:

```bash
pip install pre-commit
pre-commit install
pre-commit autoupdate
```

## Project Structure

```text  
pre-commit-hooks/
├── .pre-commit-hooks.yaml   # Manifest exposing your hooks
├── README.md                # Documentation for users
└── bin/
    └── check-todo-fixme.sh   # Executable script for your hook
```

## 🧪 Local Testing & Development

To test these hooks locally in another project before releasing a new tag:

1. Navigate to the other project's root directory.
2. Add your local hooks repository to the `.pre-commit-config.yaml`:

```yaml
repos:
  - repo: /path/to/your/local/pre-commit-hooks
    rev: v0.1.0
    hooks:
      - id: check-todo-fixme
```

3. Install and run the hooks:

```bash
pre-commit install
pre-commit run --all-files
```

## 📦 Releasing a New Version

When you are ready to release a new version of your hooks:

1. Update the version in your local repository:

```bash
git commit -am "feat: update hooks"
git tag -a v0.1.1 -m "Release v0.1.1"
git push origin main --tags
```

2. Update the `rev` field in your `.pre-commit-config.yaml` to the new tag.

3. Run `pre-commit autoupdate` to ensure your local environment is using the latest version of the hooks.

4. Verify that the new version is being used by running:

```bash
pre-commit run --all-files
```

## ✅ Summary

This repository provides custom pre-commit hooks to help maintain code quality and prevent committing unwanted patterns.
By following the steps outlined above, you can easily integrate, test, and release these hooks in your projects.

## 📄 License

This project is licensed under the Business Source License 1.1 (BUSL-1.1).
See the [LICENSE](LICENSE) file for details.

[pre-commit]: https://pre-commit.com/
[pre-commit-image]: https://img.shields.io/badge/pre--commit-enabled-orange
[license-image]: https://img.shields.io/badge/License-BUSL--1.1-green
[license-url]: https://spdx.org/licenses/BUSL-1.1.html
[release-image]: https://img.shields.io/badge/release-v0.1.0-blue
[release-url]: https://github.com/jasonouellet/pre-commit-hooks/releases
