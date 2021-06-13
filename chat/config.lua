Config = {
	--[[
	List in order of least priority to highest with 
	highest priority overtaking role before it if 
	they have that discord role.
	]]--
	roleList = {
		{'Community', "^6Community | "}, -- 1
		{825122645262729226, "^4LSPD | "}, -- 2
		{825144587823742997, "^6Pito Booster | "}, -- 3
		{825268282915291138, "^5Donator | "}, -- 4
		{825137866983866398, "^5Diamond Donator | "}, -- 5
		{847241165253902373, "^5Vegan Donator | "}, -- 6
		{825159838521884722, "^2Trial Mod | "}, -- 7
		{825110440404713492, "^2Mod | "}, -- 8
		{825110528502267904, "^5Admin | "}, -- 9
		{825159601833377802, "^5Senior Admin | "}, -- 10
		{825801815433412608, "^3Manager | "}, -- 11
		{825100250124910622, "^3Management | "}, -- 12
		{825803259058978827, "^1Community Manager | "}, -- 13
		{851221157696241724, "^9Developer | "}, -- 14
		{825117029882920970, "^9Lead Developer | "}, -- 15
		{825099891708919868, "^8Owner | "}, -- 16
	},
	allowedColors = {2, 3},
	allowedRed = {4, 5, 6, 7, 8},
	allowedEmoji = {3, 7, 8},
	sendBlockMessages = true,
	ColorPatterns = {
		['DiscordChatRoles.Access.Donator'] = {
			['White'] = {'^0'},
			['Green'] = {'^2'},
			['Yellow'] = {'^3'},
			['Blue'] = {'^4'},
			['Light Blue'] = {'^5'},
			['Purple'] = {'^6'},
			['White'] = {'^7'},
			['Pink'] = {'^9'},
			['Police'] = {'^1', '^4'},
			['Police2'] = {'^4', '^1'},
			['Christmas'] = {'^2', '^1'},
			['Christmas2'] = {'^1', '^2'},
		},
		['DiscordChatRoles.Access.Elite'] = {
			['RainbowYGB'] = {'^3', '^2', '^4'},
			['RainbowFull'] = {'^3', '^4', '^1', '^5', '^6', '^7', '^9'},
		},
		['DiscordChatRoles.Access.Staff'] = {
			['Red'] = {'^1'},
		}
	},
	emojis = {
	      [":eyes:"] = '👀',
	  	  [":thinking:"] = '🤔',
		  [":rage:"] = '😡',
		  [":alien:"] = '👽',
		  [":nauseated_face:"] = '🤢',
		  [":innocent:"] = '😇',
		  [":sunglasses:"] = '😎',
		  [":star_struck:"] = '🤩',
		  [":nerd:"] = '🤓',
		  [":face_with_symbols_over_mouth:"] = '🤬',
		  [":joy:"] = '😂',
		  [":rofl:"] = '🤣',
		  [":face_vomiting:"] = '🤮',
		  [":cold_face:"] = '🥶',
		  [":heart_eyes:"] = '😍',
		  [":kissing_heart:"] = '😘',
		  [":smiling_imp:"] = '😈',
		  [":grin:"] = '😁',
		  [":exploding_head:"] = '🤯',
		  [":stuck_out_tongue:"] = '😛',
		  [":grimacing:"] = '😬',
		  [":scream:"] = '😱',
		  [":smiley:"] = '😃',
		  [":face_with_raised_eyebrow:"] = '🤨',
		  [":triumph:"] = '😤',
		  [":kissing:"] = '😗',
		  [":kissing_smiling_eyes:"] = '😙',
		  [":fearful:"] = '😨',
		  [":wink:"] = '😉',
		  [":smiling_face_with_3_hearts:"] = '🥰',
		  [":partying_face:"] = '🥳',
		  [":sob:"] = '😭',
		  [":thumbsup:"] = '👍',
		  [":thumbsdown:"] = '👎',
		  [":punch:"] = '👊',
		  [":pray:"] = '🙏',
		  [":face_with_monocle:"] = '🧐',
		  [":smirk:"] = '😏',
		  [":cold_sweat:"] = '😰',
		  [":disappointed_relieved:"] = '😥',
		  [":angry:"] = '😠',
		  [":relieved:"] = '😌',
		  [":worried:"] = '😟',
		  [":confused:"] = '😕',
		  [":upside_down:"] = '🙃',
		  [":clown:"] = '🤡',
		  [":mask:"] = '😷',
		  [":shushing_face:"] = '🤫',
		  [":yawning_face:"] = '🥱',
		  [":imp:"] = '👿',
		  [":lying_face:"] = '🤥',
		  [":sweat:"] = '😓',
		  [":frowning2:"] = '☹️',
		  [":pleading_face:"] = '🥺',
		  [":stuck_out_tongue_winking_eye:"] = '😜',
		  [":hugging:"] = '🤗',
		  [":no_mouth:"] = '😶',
		  [":neutral_face:"] = '😐',
		  [":flushed:"] = '😳',
		  [":rolling_eyes:"] = '🙄',
		  [":expressionless:"] = '😑',
		  [":yawning_face:"] = '🥱',
		  [":hot_face:"] = '🥵',
		  [":sneezing_face:"] = '🤧',
		  [":poop:"] = '💩',
		  [":money_mouth:"] = '🤑',
		  [":sleeping:"] = '😴',
		  [":ghost:"] = '👻',
		  [":zipper_mouth:"] = '🤐',
		  [":sweat_smile:"] = '😅',
		  [":sneezing_face:"] = '🤧',
		  [":detective:"] = '🕵️',
		  [":wave:"] = '👋',
		  ["drooling_face:"] = '🤤',
		  [":head_bandage:"] = '🤕',
		  [":cowboy:"] = '🤠',
		  [":skull:"] = '💀',
		  [":busts_in_silhouette:"] = '👥',
		  [":eye:"] = '👁️',
		  [":kiss:"] = '💋',
		  [":brain:"] = '🧠',
		  [":call_me:"] = '🤙',
		  [":man_farmer::"] = '👨‍🌾',
		  [":woman_farmer:"] = '👩‍🌾',
		  [":man_police_officer:"] = '👮‍',
		  [":woman_police_officer:"] = '👮‍',
		  [":man_raising_hand:"] = '🙋‍',
		  [":panda_face:"] = '🐼',
		  [":pig:"] = '🐷',
		  [":woozy_face:"] = '🥴',
		  ["airplane:"] = '✈️',
		  ["star2:"] = '🌟',
		  [":fire:"] = '🔥',
		  [":money_with_wings:"] = '💸',
		  [":cloud_rain:"] = '🌧️',
		  [":flying_saucer:"] = '🛸',
		  [":rocket:"] = '🚀',
		  [":gun:"] = '🔫',
		  [":tools:"] = '🛠️',
	},
}