# gg_bridge_dart_side

This project is part of a demo that shows how a Dart package can be compiled
to WASM and be used in a typescript NPM package:

- `gg_bridge_dart_side` shows the dart side
- `gg-bridge-dart-typescript` bridges dart to typescript
- `gg_bridge_typescript_side` uses the result typescript in web app

## Development workflow

Install the `gg` command line:

```bash
dart pub global activate gg
```

Create a branch:

```bash
gg do create ticket TICKET_NAME -m"Your message here"
```

Do the work.

Check if the work can be committed:

```bash
gg can commit
```

Commit:

```bash
gg do commit -m"Your message here"
```

Publish:

```bash
gg do publish -m"Your message here"
```
