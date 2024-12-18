# mise-env-pass

A mise plugin to set environment variables from a [pass](https://www.passwordstore.org/) password store.

## Usage

Install this plugin

```bash
mise install mise-env-pass https://github.com/michaelPotter/mise-env-pass
```

Then update your `mise.toml`:

```toml
[env]
_.mise-env-pass.GITHUB_TOKEN = "github_token"
_.mise-env-pass.AWS_ACCESS_KEY_ID = "aws_access_key_id"
_.mise-env-pass.AWS_SECRET_ACCESS_KEY = "aws_secret_access_key"
```

You'll now see these added to your environment when running `mise env`.
