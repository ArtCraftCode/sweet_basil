# sweet basil

a simple css framework used by the artcraftcode studio.

## develop

run the development script:

```
$ scripts/development.sh
```

changes to all files in the `sass` directory will be compiled to `stylesheets`.

## deploy & version

### what does it do?

the `version` script will:

- **overwrite files locally and in production**
- compile the sass to production standards in a folder created based on the version number provided
- copy both the sass *and* the css to a versioned `builds` folder (because version control should be redundant always lol)
- pushes your changes to the aws s3 cloudfront bucket *into the versioned folder* you have configured in your `s3_website.yml` 
- adds and commits your versioned changes to git (includes `builds` and `stylesheets` folders *only*)
- tags your commit with the version
- pushes your tags to the server

### using it

run the versioning script:

```
$ scripts/version.sh version "optional commit message addition"
```

#### `version` *required*

ex: `0.0.0`

this will dictate which folder things are deployed to, so don't pick the wrong version or you are gonna fuck up everything.

#### `"optional commit message addition"`

is optional, but it will be added to the end of the git commit.

#### example

```
$ scripts/version.sh 0.0.1 "beta release with grid"
```