MeteorSettings.setDefaults
  public:
    coreEmoticons: [
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_03.png'
        replacements: ['o_o', 'O_O']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_05.png'
        replacements: [':D', ':-D']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_07.png'
        replacements: [':)', ':-)', '=)', '=-)']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_09.png'
        replacements: [':(', ':-(']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_15.png'
        replacements: ['-_-']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_16.png'
        replacements: [':P', ':-P']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_17.png'
        replacements: [':O', ':-O', ':o']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_18.png'
        replacements: [':smirk:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_23.png'
        replacements: ['>:(', ':[']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_24.png'
        replacements: [':ninja:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_25.png'
        replacements: [':nerd:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_26.png'
        replacements: [':S', ':-S']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_31.png'
        replacements: [':bashful:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_32.png'
        replacements: [':crying:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_33.png'
        replacements: [':puke:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_34.png'
        replacements: [':love:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_39.png'
        replacements: [':devil:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_40.png'
        replacements: [':angel:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_41.png'
        replacements: ['8)', '8-)', '(H)']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_42.png'
        replacements: [':wtf:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_47.png'
        replacements: [':sweating:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_48.png'
        replacements: ['>:D']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_49.png'
        replacements: [':spooked:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_50.png'
        replacements: [':embarrassed:']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_55.png'
        replacements: ['O.o']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_56.png'
        replacements: ['x-D']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_57.png'
        replacements: [';)', ';-)']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/caritas_58.png'
        replacements: [':\\', ':-\\']
      },
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/beer-chugger.gif'
        replacements: [':beer:']
      }
      {
        image: '/packages/dubvfan87_emoticons/assets/images/emoticons/poop.png'
        replacements: [':poop:']
      }
    ]

escapeCharacters = [
  ')'
  '('
  '*'
  '['
  ']'
  '{'
  '}'
  '|'
  '^'
  '<'
  '>'
  '\\'
  '?'
  '+'
  '='
  '.'
]
specialRegex = new RegExp('(\\' + escapeCharacters.join('|\\') + ')', 'g')
preMatch = '(^|[\\s\\0])'

Template.registerHelper 'parseEmoticons', (text) ->
    emoticons = _.union(Meteor.settings.public?.coreEmoticons, Meteor.settings.public?.extraEmoticons)

    _.each emoticons, (emoticon) ->
      _.each emoticon.replacements, (replaceStr) ->
        replaceStr = replaceStr.replace specialRegex, '\\$1'
        match = new RegExp(preMatch + '(' + replaceStr + ')', 'g')
        text = text.replace match, '<img class="meteoremoticon" src="' + emoticon.image + '">'
    return text
