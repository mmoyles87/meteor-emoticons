# Emoticons

This meteor packages adds a helper function to your project which parses
emoticon strings and replaces them with images. There is a basic set of 24
icons, but you can add as many as you want by populating
Meteor.settings.public.extraEmoticons or you can completely replace the core
set with your own icons by overwriting Meteor.settings.public.coreEmoticons.

## Quick Start
```bash
$ meteor add mattimo:emoticons
```

You will get a new helper

{{parseEmoticons "text"}}

## Adding Extra Icons
```json
{
  "public": {
    "extraEmoticons": [
      {
        "image": "/path/to/beer.gif",
        "replacements": [":beer:", ":cheers", ":toast:"]
      },
      {
        "image": "/path/to/something.png",
        "replacements": [":somethingcool:"]
      },
    ]
  }
}
```

## Replacing Core Icons
```json
{
  "public": {
    "coreEmoticons": [
      {
        "image": "/path/to/happy.png",
        "replacements": [":)", ":-)"]
      },
      {
        "image": "/path/to/wink.png",
        "replacements": [";)", ";-)"]
      },
    ]
  }
}
```
