// https://flagpedia.net/emoji

const kCountryOptions = {
  'Afghanistan': {
    'description': '\u{1F1E6}\u{1F1EB} Afghanistan (+93)',
    'flag': '\u{1F1E6}\u{1F1EB}',
    'phone': '+93',
  },
  'Albania': {
    'description': '\u{1F1E6}\u{1F1F1} Albania (+355)',
    'flag': '\u{1F1E6}\u{1F1F1}',
    'phone': '+355',
  },
  'Algeria': {
    'description': '\u{1F1E9}\u{1F1FF} Algeria (+213)',
    'flag': '\u{1F1E9}\u{1F1FF}',
    'phone': '+213',
  },
  'American Samoa': {
    'description': '\u{1F1E6}\u{1F1F8} American Samoa (+1)',
    'flag': '\u{1F1E6}\u{1F1F8}',
    'phone': '+1',
  },
  'Andorra': {
    'description': '\u{1F1E6}\u{1F1E9} Andorra (+376)',
    'flag': '\u{1F1E6}\u{1F1E9}',
    'phone': '+376',
  },
  'Angola': {
    'description': '\u{1F1E6}\u{1F1F4} Angola (+244)',
    'flag': '\u{1F1E6}\u{1F1F4}',
    'phone': '+244',
  },
  'Anguilla': {
    'description': '\u{1F1E6}\u{1F1EE} Anguilla (+264)',
    'flag': '\u{1F1E6}\u{1F1EE}',
    'phone': '+264',
  },
  'Antigua & Barbuda': {
    'description': '\u{1F1E6}\u{1F1EC} Antigua & Barbuda (+268)',
    'flag': '\u{1F1E6}\u{1F1EC}',
    'phone': '+268',
  },
  'Argentina': {
    'description': '\u{1F1E6}\u{1F1F7} Argentina (+54)',
    'flag': '\u{1F1E6}\u{1F1F7}',
    'phone': '+54',
  },
  'Armenia': {
    'description': '\u{1F1E6}\u{1F1F2} Armenia (+374)',
    'flag': '\u{1F1E6}\u{1F1F2}',
    'phone': '+374',
  },
  'Aruba': {
    'description': '\u{1F1E6}\u{1F1FC} Aruba (+297)',
    'flag': '\u{1F1E6}\u{1F1FC}',
    'phone': '+297',
  },
  'Ascension Island': {
    'description': '\u{1F1E6}\u{1F1E8} Ascension Island (+247)',
    'flag': '\u{1F1E6}\u{1F1E8}',
    'phone': '+247',
  },
  'Australia': {
    'description': '\u{1F1E6}\u{1F1FA} Australia (+61)',
    'flag': '\u{1F1E6}\u{1F1FA}',
    'phone': '+61',
  },
  'Austria': {
    'description': '\u{1F1E6}\u{1F1F9} Austria (+43)',
    'flag': '\u{1F1E6}\u{1F1F9}',
    'phone': '+43',
  },
  'Azerbaijan': {
    'description': '\u{1F1E6}\u{1F1FF} Azerbaijan (+994)',
    'flag': '\u{1F1E6}\u{1F1FF}',
    'phone': '+994',
  },
  'Åland Islands': {
    'description': '\u{1F1E6}\u{1F1FD} Åland Islands (+358)',
    'flag': '\u{1F1E6}\u{1F1FD}',
    'phone': '+358',
  },
  'Bahamas': {
    'description': '\u{1F1E7}\u{1F1F8} Bahamas (+1)',
    'flag': '\u{1F1E7}\u{1F1F8}',
    'phone': '+1',
  },
  'Bahrain': {
    'description': '\u{1F1E7}\u{1F1ED} Bahrain (+973)',
    'flag': '\u{1F1E7}\u{1F1ED}',
    'phone': '+973',
  },
  'Bangladesh': {
    'description': '\u{1F1E7}\u{1F1E9} Bangladesh (+880)',
    'flag': '\u{1F1E7}\u{1F1E9}',
    'phone': '+880',
  },
  'Barbados': {
    'description': '\u{1F1E7}\u{1F1E7} Barbados (+1)',
    'flag': '\u{1F1E7}\u{1F1E7}',
    'phone': '+1',
  },
  'Belarus': {
    'description': '\u{1F1E7}\u{1F1FE} Belarus (+375)',
    'flag': '\u{1F1E7}\u{1F1FE}',
    'phone': '+375',
  },
  'Belgium': {
    'description': '\u{1F1E7}\u{1F1EA} Belgium (+32)',
    'flag': '\u{1F1E7}\u{1F1EA}',
    'phone': '+32',
  },
  'Belize': {
    'description': '\u{1F1E7}\u{1F1FF} Belize (+501)',
    'flag': '\u{1F1E7}\u{1F1FF}',
    'phone': '+501',
  },
  'Benin': {
    'description': '\u{1F1E7}\u{1F1EF} Benin (+229)',
    'flag': '\u{1F1E7}\u{1F1EF}',
    'phone': '+229',
  },
  'Bermuda': {
    'description': '\u{1F1E7}\u{1F1F2} Bermuda (+1)',
    'flag': '\u{1F1E7}\u{1F1F2}',
    'phone': '+1',
  },
  'Bhutan': {
    'description': '\u{1F1E7}\u{1F1F9} Bhutan (+975)',
    'flag': '\u{1F1E7}\u{1F1F9}',
    'phone': '+975',
  },
  'Bolivia': {
    'description': '\u{1F1E7}\u{1F1F4} Bolivia (+591)',
    'flag': '\u{1F1E7}\u{1F1F4}',
    'phone': '+591',
  },
  'Bosnia & Herzegovina': {
    'description': '\u{1F1E7}\u{1F1E6} Bosnia & Herzegovina (+387)',
    'flag': '\u{1F1E7}\u{1F1E6}',
    'phone': '+387',
  },
  'Botswana': {
    'description': '\u{1F1E7}\u{1F1FC} Botswana (+267)',
    'flag': '\u{1F1E7}\u{1F1FC}',
    'phone': '+267',
  },
  'Brazil': {
    'description': '\u{1F1E7}\u{1F1F7} Brazil (+55)',
    'flag': '\u{1F1E7}\u{1F1F7}',
    'phone': '+55',
  },
  'British Virgin Islands': {
    'description': '\u{1F1FB}\u{1F1EC} British Virgin Islands (+1)',
    'flag': '\u{1F1FB}\u{1F1EC}',
    'phone': '+1',
  },
  'Brunei': {
    'description': '\u{1F1E7}\u{1F1F3} Brunei (+673)',
    'flag': '\u{1F1E7}\u{1F1F3}',
    'phone': '+673',
  },
  'Bulgaria': {
    'description': '\u{1F1E7}\u{1F1EC} Bulgaria (+359)',
    'flag': '\u{1F1E7}\u{1F1EC}',
    'phone': '+359',
  },
  'Burkina Faso': {
    'description': '\u{1F1E7}\u{1F1EB} Burkina Faso (+226)',
    'flag': '\u{1F1E7}\u{1F1EB}',
    'phone': '+226',
  },
  'Burundi': {
    'description': '\u{1F1E7}\u{1F1EE} Burundi (+257)',
    'flag': '\u{1F1E7}\u{1F1EE}',
    'phone': '+257',
  },
  'Cambodia': {
    'description': '\u{1F1F0}\u{1F1ED} Cambodia (+855)',
    'flag': '\u{1F1F0}\u{1F1ED}',
    'phone': '+855',
  },
  'Cameroon': {
    'description': '\u{1F1E8}\u{1F1F2} Cameroon (+237)',
    'flag': '\u{1F1E8}\u{1F1F2}',
    'phone': '+237',
  },
  'Canada': {
    'description': '\u{1F1E8}\u{1F1E6} Canada (+1)',
    'flag': '\u{1F1E8}\u{1F1E6}',
    'phone': '+1',
  },
  'Cape Verde': {
    'description': '\u{1F1E8}\u{1F1FB} Cape Verde (+238)',
    'flag': '\u{1F1E8}\u{1F1FB}',
    'phone': '+238',
  },
  'Caribbean Netherlands': {
    'description': '\u{1F1E7}\u{1F1F6} Caribbean Netherlands (+599)',
    'flag': '\u{1F1E7}\u{1F1F6}',
    'phone': '+599',
  },
  'Cayman Islands': {
    'description': '\u{1F1F0}\u{1F1FE} Cayman Islands (+1)',
    'flag': '\u{1F1F0}\u{1F1FE}',
    'phone': '+1',
  },
  'Central African Republic': {
    'description': '\u{1F1E8}\u{1F1EB} Central African Republic (+236)',
    'flag': '\u{1F1E8}\u{1F1EB}',
    'phone': '+236',
  },
  'Chad': {
    'description': '\u{1F1F9}\u{1F1E9} Chad (+235)',
    'flag': '\u{1F1F9}\u{1F1E9}',
    'phone': '+235',
  },
  'Chagos Archipelago': {
    'description': '\u{1F1EE}\u{1F1F4} Chagos Archipelago (+246)',
    'flag': '\u{1F1EE}\u{1F1F4}',
    'phone': '+246',
  },
  'Chile': {
    'description': '\u{1F1E8}\u{1F1F1} Chile (+56)',
    'flag': '\u{1F1E8}\u{1F1F1}',
    'phone': '+56',
  },
  'China mainland': {
    'description': '\u{1F1E8}\u{1F1F3} China mainland (+86)',
    'flag': '\u{1F1E8}\u{1F1F3}',
    'phone': '+86',
  },
  'Christmas Island': {
    'description': '\u{1F1E8}\u{1F1FD} Christmas Island (+61)',
    'flag': '\u{1F1E8}\u{1F1FD}',
    'phone': '+61',
  },
  'Cocos (Keeling) Islands': {
    'description': '\u{1F1E8}\u{1F1E8} Cocos (Keeling) Islands (+61)',
    'flag': '\u{1F1E8}\u{1F1E8}',
    'phone': '+61',
  },
  'Columbia': {
    'description': '\u{1F1E8}\u{1F1F4} Colombia (+57)',
    'flag': '\u{1F1E8}\u{1F1F4}',
    'phone': '+57',
  },
  'Comoros': {
    'description': '\u{1F1F0}\u{1F1F2} Comoros (+269)',
    'flag': '\u{1F1F0}\u{1F1F2}',
    'phone': '+269',
  },
  'Congo - Brazzaville': {
    'description': '\u{1F1E8}\u{1F1EC} Congo - Brazzaville (+242)',
    'flag': '\u{1F1E8}\u{1F1EC}',
    'phone': '+242',
  },
  'Congo - Kinshasa': {
    'description': '\u{1F1E8}\u{1F1E9} Congo - Kinshasa (+243)',
    'flag': '\u{1F1E8}\u{1F1E9}',
    'phone': '+243',
  },
  'Cook Islands': {
    'description': '\u{1F1E8}\u{1F1F0} Cook Islands (+682)',
    'flag': '\u{1F1E8}\u{1F1F0}',
    'phone': '+682',
  },
  'Costa Rica': {
    'description': '\u{1F1E8}\u{1F1F7} Costa Rica (+506)',
    'flag': '\u{1F1E8}\u{1F1F7}',
    'phone': '+506',
  },
  'Côte d\'Ivoire': {
    'description': '\u{1F1E8}\u{1F1EE} Côte d\'Ivoire (+225)',
    'flag': '\u{1F1E8}\u{1F1EE}',
    'phone': '+225',
  },
  'Croatia': {
    'description': '\u{1F1ED}\u{1F1F7} Croatia (+385)',
    'flag': '\u{1F1ED}\u{1F1F7}',
    'phone': '+385',
  },
  'Cuba': {
    'description': '\u{1F1E8}\u{1F1FA} Cuba (+53)',
    'flag': '\u{1F1E8}\u{1F1FA}',
    'phone': '+53',
  },
  'Curaçao': {
    'description': '\u{1F1E8}\u{1F1FC} Curaçao (+599)',
    'flag': '\u{1F1E8}\u{1F1FC}',
    'phone': '+599',
  },
  'Cyprus': {
    'description': '\u{1F1E8}\u{1F1FE} Cyprus (+357)',
    'flag': '\u{1F1E8}\u{1F1FE}',
    'phone': '+357',
  },
  'Czechia': {
    'description': '\u{1F1E8}\u{1F1FF} Czechia (+420)',
    'flag': '\u{1F1E8}\u{1F1FF}',
    'phone': '+420',
  },
  'Denmark': {
    'description': '\u{1F1E9}\u{1F1F0} Denmark (+45)',
    'flag': '\u{1F1E9}\u{1F1F0}',
    'phone': '+45',
  },
  'Djibouti': {
    'description': '\u{1F1E9}\u{1F1EF} Djibouti (+253)',
    'flag': '\u{1F1E9}\u{1F1EF}',
    'phone': '+253',
  },
  'Dominica': {
    'description': '\u{1F1E9}\u{1F1F2} Dominica (+1)',
    'flag': '\u{1F1E9}\u{1F1F2}',
    'phone': '+1',
  },
  'Dominican Republic': {
    'description': '\u{1F1E9}\u{1F1F4} Dominican Republic (+1)',
    'flag': '\u{1F1E9}\u{1F1F4}',
    'phone': '+1',
  },
  'Ecuador': {
    'description': '\u{1F1EA}\u{1F1E8} Ecuador (+593)',
    'flag': '\u{1F1EA}\u{1F1E8}',
    'phone': '+593',
  },
  'Egypt': {
    'description': '\u{1F1EA}\u{1F1EC} Egypt (+20)',
    'flag': '\u{1F1EA}\u{1F1EC}',
    'phone': '+20',
  },
  'El Salvador': {
    'description': '\u{1F1F8}\u{1F1FB} El Salvador (+503)',
    'flag': '\u{1F1F8}\u{1F1FB}',
    'phone': '+503',
  },
  'Equatorial Guinea': {
    'description': '\u{1F1EC}\u{1F1F6} Equatorial Guinea (+240)',
    'flag': '\u{1F1EC}\u{1F1F6}',
    'phone': '+240',
  },
  'Eritrea': {
    'description': '\u{1F1EA}\u{1F1F7} Eritrea (+291)',
    'flag': '\u{1F1EA}\u{1F1F7}',
    'phone': '+291',
  },
  'Estonia': {
    'description': '\u{1F1EA}\u{1F1EA} Estonia (+372)',
    'flag': '\u{1F1EA}\u{1F1EA}',
    'phone': '+372',
  },
  'Eswatini': {
    'description': '\u{1F1F8}\u{1F1FF} Eswatini (+268)',
    'flag': '\u{1F1F8}\u{1F1FF}',
    'phone': '+268',
  },
  'Ethiopia': {
    'description': '\u{1F1EA}\u{1F1F9} Ethiopia (+251)',
    'flag': '\u{1F1EA}\u{1F1F9}',
    'phone': '+251',
  },
  'Falkland Islands': {
    'description': '\u{1F1EB}\u{1F1F0} Falkland Islands (+500)',
    'flag': '\u{1F1EB}\u{1F1F0}',
    'phone': '+500',
  },
  'Faroe Islands': {
    'description': '\u{1F1EB}\u{1F1F4} Faroe Islands (+298)',
    'flag': '\u{1F1EB}\u{1F1F4}',
    'phone': '+298',
  },
  'Fiji': {
    'description': '\u{1F1EB}\u{1F1EF} Fiji (+679)',
    'flag': '\u{1F1EB}\u{1F1EF}',
    'phone': '+679',
  },
  'Finland': {
    'description': '\u{1F1EB}\u{1F1EE} Finland (+358)',
    'flag': '\u{1F1EB}\u{1F1EE}',
    'phone': '+358',
  },
  'France': {
    'description': '\u{1F1EB}\u{1F1F7} France (+33)',
    'flag': '\u{1F1EB}\u{1F1F7}',
    'phone': '+33',
  },
  'French Guiana': {
    'description': '\u{1F1EC}\u{1F1EB} French Guiana (+594)',
    'flag': '\u{1F1EC}\u{1F1EB}',
    'phone': '+594',
  },
  'French Polynesia': {
    'description': '\u{1F1F5}\u{1F1EB} French Polynesia (+689)',
    'flag': '\u{1F1F5}\u{1F1EB}',
    'phone': '+689',
  },
  'Gabon': {
    'description': '\u{1F1EC}\u{1F1E6} Gabon (+241)',
    'flag': '\u{1F1EC}\u{1F1E6}',
    'phone': '+241',
  },
  'Gambia': {
    'description': '\u{1F1EC}\u{1F1F2} Gambia (+220)',
    'flag': '\u{1F1EC}\u{1F1F2}',
    'phone': '+220',
  },
  'Georgia': {
    'description': '\u{1F1EC}\u{1F1EA} Georgia (+995)',
    'flag': '\u{1F1EC}\u{1F1EA}',
    'phone': '+995',
  },
  'Germany': {
    'description': '\u{1F1E9}\u{1F1EA} Germany (+49)',
    'flag': '\u{1F1E9}\u{1F1EA}',
    'phone': '+49',
  },
  'Ghana': {
    'description': '\u{1F1EC}\u{1F1ED} Ghana (+233)',
    'flag': '\u{1F1EC}\u{1F1ED}',
    'phone': '+233',
  },
  'Gibraltar': {
    'description': '\u{1F1EC}\u{1F1EE} Gibraltar (+350)',
    'flag': '\u{1F1EC}\u{1F1EE}',
    'phone': '+350',
  },
  'Greece': {
    'description': '\u{1F1EC}\u{1F1F7} Greece (+30)',
    'flag': '\u{1F1EC}\u{1F1F7}',
    'phone': '+30',
  },
  'Greenland': {
    'description': '\u{1F1EC}\u{1F1F1} Greenland (+299)',
    'flag': '\u{1F1EC}\u{1F1F1}',
    'phone': '+299',
  },
  'Grenada': {
    'description': '\u{1F1EC}\u{1F1E9} Grenada (+1)',
    'flag': '\u{1F1EC}\u{1F1E9}',
    'phone': '+1',
  },
  'Guadeloupe': {
    'description': '\u{1F1EC}\u{1F1F5} Guadeloupe (+590)',
    'flag': '\u{1F1EC}\u{1F1F5}',
    'phone': '+590',
  },
  'Guam': {
    'description': '\u{1F1EC}\u{1F1FA} Guam (+1)',
    'flag': '\u{1F1EC}\u{1F1FA}',
    'phone': '+1',
  },
  'Guatemala': {
    'description': '\u{1F1EC}\u{1F1F9} Guatemala (+502)',
    'flag': '\u{1F1EC}\u{1F1F9}',
    'phone': '+502',
  },
  'Guernsey': {
    'description': '\u{1F1EC}\u{1F1EC} Guernsey (+44)',
    'flag': '\u{1F1EC}\u{1F1EC}',
    'phone': '+44',
  },
  'Guinea': {
    'description': '\u{1F1EC}\u{1F1F3} Guinea (+224)',
    'flag': '\u{1F1EC}\u{1F1F3}',
    'phone': '+224',
  },
  'Guinea-Bissau': {
    'description': '\u{1F1EC}\u{1F1FC} Guinea-Bissau (+245)',
    'flag': '\u{1F1EC}\u{1F1FC}',
    'phone': '+245',
  },
  'Guyana': {
    'description': '\u{1F1EC}\u{1F1FE} Guyana (+592)',
    'flag': '\u{1F1EC}\u{1F1FE}',
    'phone': '+592',
  },
  'Haiti': {
    'description': '\u{1F1ED}\u{1F1F9} Haiti (+509)',
    'flag': '\u{1F1ED}\u{1F1F9}',
    'phone': '+509',
  },
  'Honduras': {
    'description': '\u{1F1ED}\u{1F1F3} Honduras (+504)',
    'flag': '\u{1F1ED}\u{1F1F3}',
    'phone': '+504',
  },
  'Hong Kong': {
    'description': '\u{1F1ED}\u{1F1F0} Hong Kong (+852)',
    'flag': '\u{1F1ED}\u{1F1F0}',
    'phone': '+852',
  },
  'Hungary': {
    'description': '\u{1F1ED}\u{1F1FA} Hungary (+36)',
    'flag': '\u{1F1ED}\u{1F1FA}',
    'phone': '+36',
  },
  'Iceland': {
    'description': '\u{1F1EE}\u{1F1F8} Iceland (+354)',
    'flag': '\u{1F1EE}\u{1F1F8}',
    'phone': '+354',
  },
  'India': {
    'description': '\u{1F1EE}\u{1F1F3} India (+91)',
    'flag': '\u{1F1EE}\u{1F1F3}',
    'phone': '+91',
  },
  'Indonesia': {
    'description': '\u{1F1EE}\u{1F1E9} Indonesia (+62)',
    'flag': '\u{1F1EE}\u{1F1E9}',
    'phone': '+62',
  },
  'Iran': {
    'description': '\u{1F1EE}\u{1F1F7} Iran (+98)',
    'flag': '\u{1F1EE}\u{1F1F7}',
    'phone': '+98',
  },
  'Iraq': {
    'description': '\u{1F1EE}\u{1F1F6} Iraq (+964)',
    'flag': '\u{1F1EE}\u{1F1F6}',
    'phone': '+964',
  },
  'Ireland': {
    'description': '\u{1F1EE}\u{1F1EA} Ireland (+353)',
    'flag': '\u{1F1EE}\u{1F1EA}',
    'phone': '+353',
  },
  'Isle of Man': {
    'description': '\u{1F1EE}\u{1F1F2} Isle of Man (+44)',
    'flag': '\u{1F1EE}\u{1F1F2}',
    'phone': '+44',
  },
  'Israel': {
    'description': '\u{1F1EE}\u{1F1F1} Israel (+972)',
    'flag': '\u{1F1EE}\u{1F1F1}',
    'phone': '+972',
  },
  'Italy': {
    'description': '\u{1F1EE}\u{1F1F9} Italy (+39)',
    'flag': '\u{1F1EE}\u{1F1F9}',
    'phone': '+39',
  },
  'Jamaica': {
    'description': '\u{1F1EF}\u{1F1F2} Jamaica (+1)',
    'flag': '\u{1F1EF}\u{1F1F2}',
    'phone': '+1',
  },
  'Japan': {
    'description': '\u{1F1EF}\u{1F1F5} Japan (+81)',
    'flag': '\u{1F1EF}\u{1F1F5}',
    'phone': '+81',
  },
  'Jersey': {
    'description': '\u{1F1EF}\u{1F1EA} Jersey (+44)',
    'flag': '\u{1F1EF}\u{1F1EA}',
    'phone': '+44',
  },
  'Jordan': {
    'description': '\u{1F1EF}\u{1F1F4} Jordan (+962)',
    'flag': '\u{1F1EF}\u{1F1F4}',
    'phone': '+962',
  },
  'Kazakhstan': {
    'description': '\u{1F1F0}\u{1F1FF} Kazakhstan (+7)',
    'flag': '\u{1F1F0}\u{1F1FF}',
    'phone': '+7',
  },
  'Kenya': {
    'description': '\u{1F1F0}\u{1F1EA} Kenya (+254)',
    'flag': '\u{1F1F0}\u{1F1EA}',
    'phone': '+254',
  },
  'Kiribati': {
    'description': '\u{1F1F0}\u{1F1EE} Kiribati (+686)',
    'flag': '\u{1F1F0}\u{1F1EE}',
    'phone': '+686',
  },
  'Kosovo': {
    'description': '\u{1F1FD}\u{1F1F0} Kosovo (+383)',
    'flag': '\u{1F1FD}\u{1F1F0}',
    'phone': '+383',
  },
  'Kuwait': {
    'description': '\u{1F1F0}\u{1F1FC} Kuwait (+965)',
    'flag': '\u{1F1F0}\u{1F1FC}',
    'phone': '+965',
  },
  'Kyrgyzstan': {
    'description': '\u{1F1F0}\u{1F1EC} Kyrgyzstan (+996)',
    'flag': '\u{1F1F0}\u{1F1EC}',
    'phone': '+996',
  },
  'Laos': {
    'description': '\u{1F1F1}\u{1F1E6} Laos (+856)',
    'flag': '\u{1F1F1}\u{1F1E6}',
    'phone': '+856',
  },
  'Latvia': {
    'description': '\u{1F1F1}\u{1F1FB} Latvia (+371)',
    'flag': '\u{1F1F1}\u{1F1FB}',
    'phone': '+371',
  },
  'Lebanon': {
    'description': '\u{1F1F1}\u{1F1E7} Lebanon (+961)',
    'flag': '\u{1F1F1}\u{1F1E7}',
    'phone': '+961',
  },
  'Lesotho': {
    'description': '\u{1F1F1}\u{1F1F8} Lesotho (+266)',
    'flag': '\u{1F1F1}\u{1F1F8}',
    'phone': '+266',
  },
  'Liberia': {
    'description': '\u{1F1F1}\u{1F1F7} Liberia (+231)',
    'flag': '\u{1F1F1}\u{1F1F7}',
    'phone': '+231',
  },
  'Libya': {
    'description': '\u{1F1F1}\u{1F1FE} Libya (+218)',
    'flag': '\u{1F1F1}\u{1F1FE}',
    'phone': '+218',
  },
  'Liechtenstein': {
    'description': '\u{1F1F1}\u{1F1EE} Liechtenstein (+423)',
    'flag': '\u{1F1F1}\u{1F1EE}',
    'phone': '+423',
  },
  'Lithuania': {
    'description': '\u{1F1F1}\u{1F1F9} Lithuania (+370)',
    'flag': '\u{1F1F1}\u{1F1F9}',
    'phone': '+370',
  },
  'Luxembourg': {
    'description': '\u{1F1F1}\u{1F1FA} Luxembourg (+352)',
    'flag': '\u{1F1F1}\u{1F1FA}',
    'phone': '+352',
  },
  'Macao': {
    'description': '\u{1F1F2}\u{1F1F4} Macao (+853)',
    'flag': '\u{1F1F2}\u{1F1F4}',
    'phone': '+853',
  },
  'Madagascar': {
    'description': '\u{1F1F2}\u{1F1EC} Madagascar (+261)',
    'flag': '\u{1F1F2}\u{1F1EC}',
    'phone': '+261',
  },
  'Malawi': {
    'description': '\u{1F1F2}\u{1F1FC} Malawi (+265)',
    'flag': '\u{1F1F2}\u{1F1FC}',
    'phone': '+265',
  },
  'Malaysia': {
    'description': '\u{1F1F2}\u{1F1FE} Malaysia (+60)',
    'flag': '\u{1F1F2}\u{1F1FE}',
    'phone': '+60',
  },
  'Maldives': {
    'description': '\u{1F1F2}\u{1F1FB} Maldives (+960)',
    'flag': '\u{1F1F2}\u{1F1FB}',
    'phone': '+960',
  },
  'Mali': {
    'description': '\u{1F1F2}\u{1F1F1} Mali (+223)',
    'flag': '\u{1F1F2}\u{1F1F1}',
    'phone': '+223',
  },
  'Malta': {
    'description': '\u{1F1F2}\u{1F1F9} Malta (+356)',
    'flag': '\u{1F1F2}\u{1F1F9}',
    'phone': '+356',
  },
  'Marshall Islands': {
    'description': '\u{1F1F2}\u{1F1ED} Marshall Islands (+692)',
    'flag': '\u{1F1F2}\u{1F1ED}',
    'phone': '+692',
  },
  'Martinique': {
    'description': '\u{1F1F2}\u{1F1F6} Martinique (+596)',
    'flag': '\u{1F1F2}\u{1F1F6}',
    'phone': '+596',
  },
  'Mauritania': {
    'description': '\u{1F1F2}\u{1F1F7} Mauritania (+222)',
    'flag': '\u{1F1F2}\u{1F1F7}',
    'phone': '+222',
  },
  'Mauritius': {
    'description': '\u{1F1F2}\u{1F1FA} Mauritius (+230)',
    'flag': '\u{1F1F2}\u{1F1FA}',
    'phone': '+230',
  },
  'Mayotte': {
    'description': '\u{1F1FE}\u{1F1F9} Mayotte (+262)',
    'flag': '\u{1F1FE}\u{1F1F9}',
    'phone': '+262',
  },
  'Mexico': {
    'description': '\u{1F1F2}\u{1F1FD} Mexico (+52)',
    'flag': '\u{1F1F2}\u{1F1FD}',
    'phone': '+52',
  },
  'Micronesia': {
    'description': '\u{1F1EB}\u{1F1F2} Micronesia (+691)',
    'flag': '\u{1F1EB}\u{1F1F2}',
    'phone': '+691',
  },
  'Moldova': {
    'description': '\u{1F1F2}\u{1F1E9} Moldova (+373)',
    'flag': '\u{1F1F2}\u{1F1E9}',
    'phone': '+373',
  },
  'Monaco': {
    'description': '\u{1F1F2}\u{1F1E8} Monaco (+377)',
    'flag': '\u{1F1F2}\u{1F1E8}',
    'phone': '+377',
  },
  'Mongolia': {
    'description': '\u{1F1F2}\u{1F1F3} Mongolia (+976)',
    'flag': '\u{1F1F2}\u{1F1F3}',
    'phone': '+976',
  },
  'Montenegro': {
    'description': '\u{1F1F2}\u{1F1EA} Montenegro (+382)',
    'flag': '\u{1F1F2}\u{1F1EA}',
    'phone': '+382',
  },
  'Montserrat': {
    'description': '\u{1F1F2}\u{1F1F8} Montserrat (+1)',
    'flag': '\u{1F1F2}\u{1F1F8}',
    'phone': '+1',
  },
  'Morocco': {
    'description': '\u{1F1F2}\u{1F1E6} Morocco (+212)',
    'flag': '\u{1F1F2}\u{1F1E6}',
    'phone': '+212',
  },
  'Mozambique': {
    'description': '\u{1F1F2}\u{1F1FF} Mozambique (+258)',
    'flag': '\u{1F1F2}\u{1F1FF}',
    'phone': '+258',
  },
  'Myanmar (Burma)': {
    'description': '\u{1F1F2}\u{1F1F2} Myanmar (Burma) (+95)',
    'flag': '\u{1F1F2}\u{1F1F2}',
    'phone': '+95',
  },
  'Namibia': {
    'description': '\u{1F1F3}\u{1F1E6} Namibia (+264)',
    'flag': '\u{1F1F3}\u{1F1E6}',
    'phone': '+264',
  },
  'Nauru': {
    'description': '\u{1F1F3}\u{1F1F7} Nauru (+674)',
    'flag': '\u{1F1F3}\u{1F1F7}',
    'phone': '+674',
  },
  'Nepal': {
    'description': '\u{1F1F3}\u{1F1F5} Nepal (+977)',
    'flag': '\u{1F1F3}\u{1F1F5}',
    'phone': '+977',
  },
  'Netherlands': {
    'description': '\u{1F1F3}\u{1F1F1} Netherlands (+31)',
    'flag': '\u{1F1F3}\u{1F1F1}',
    'phone': '+31',
  },
  'New Caledonia': {
    'description': '\u{1F1F3}\u{1F1E8} New Caledonia (+687)',
    'flag': '\u{1F1F3}\u{1F1E8}',
    'phone': '+687',
  },
  'New Zealand': {
    'description': '\u{1F1F3}\u{1F1FF} New Zealand (+64)',
    'flag': '\u{1F1F3}\u{1F1FF}',
    'phone': '+64',
  },
  'Nicaragua': {
    'description': '\u{1F1F3}\u{1F1EE} Nicaragua (+505)',
    'flag': '\u{1F1F3}\u{1F1EE}',
    'phone': '+505',
  },
  'Niger': {
    'description': '\u{1F1F3}\u{1F1EA} Niger (+227)',
    'flag': '\u{1F1F3}\u{1F1EA}',
    'phone': '+227',
  },
  'Nigeria': {
    'description': '\u{1F1F3}\u{1F1EC} Nigeria (+234)',
    'flag': '\u{1F1F3}\u{1F1EC}',
    'phone': '+234',
  },
  'Niue': {
    'description': '\u{1F1F3}\u{1F1FA} Niue (+683)',
    'flag': '\u{1F1F3}\u{1F1FA}',
    'phone': '+683',
  },
  'Norfolk Island': {
    'description': '\u{1F1F3}\u{1F1EB} Norfolk Island (+672)',
    'flag': '\u{1F1F3}\u{1F1EB}',
    'phone': '+672',
  },
  'North Korea': {
    'description': '\u{1F1F0}\u{1F1F5} North Korea (+850)',
    'flag': '\u{1F1F0}\u{1F1F5}',
    'phone': '+850',
  },
  'North Macedonia': {
    'description': '\u{1F1F2}\u{1F1F0} North Macedonia (+389)',
    'flag': '\u{1F1F2}\u{1F1F0}',
    'phone': '+389',
  },
  'Northern Mariana Islands': {
    'description': '\u{1F1F2}\u{1F1F5} Northern Mariana Islands (+1 670)',
    'flag': '\u{1F1F2}\u{1F1F5}',
    'phone': '+1 670',
  },
  'Norway': {
    'description': '\u{1F1F3}\u{1F1F4} Norway (+47)',
    'flag': '\u{1F1F3}\u{1F1F4}',
    'phone': '+47',
  },
  'Oman': {
    'description': '\u{1F1F4}\u{1F1F2} Oman (+968)',
    'flag': '\u{1F1F4}\u{1F1F2}',
    'phone': '+968',
  },
  'Pakistan': {
    'description': '\u{1F1F5}\u{1F1F0} Pakistan (+92)',
    'flag': '\u{1F1F5}\u{1F1F0}',
    'phone': '+92',
  },
  'Palau': {
    'description': '\u{1F1F5}\u{1F1FC} Palau (+680)',
    'flag': '\u{1F1F5}\u{1F1FC}',
    'phone': '+680',
  },
  'Palestine': {
    'description': '\u{1F1F5}\u{1F1F8} Palestine (+970)',
    'flag': '\u{1F1F5}\u{1F1F8}',
    'phone': '+970',
  },
  'Panama': {
    'description': '\u{1F1F5}\u{1F1E6} Panama (+507)',
    'flag': '\u{1F1F5}\u{1F1E6}',
    'phone': '+507',
  },
  'Papua New Guinea': {
    'description': '\u{1F1F5}\u{1F1EC} Papua New Guinea (+675)',
    'flag': '\u{1F1F5}\u{1F1EC}',
    'phone': '+675',
  },
  'Paraguay': {
    'description': '\u{1F1F5}\u{1F1FE} Paraguay (+595)',
    'flag': '\u{1F1F5}\u{1F1FE}',
    'phone': '+595',
  },
  'Peru': {
    'description': '\u{1F1F5}\u{1F1EA} Peru (+51)',
    'flag': '\u{1F1F5}\u{1F1EA}',
    'phone': '+51',
  },
  'Philippines': {
    'description': '\u{1F1F5}\u{1F1ED} Philippines (+63)',
    'flag': '\u{1F1F5}\u{1F1ED}',
    'phone': '+63',
  },
  'Poland': {
    'description': '\u{1F1F5}\u{1F1F1} Poland (+48)',
    'flag': '\u{1F1F5}\u{1F1F1}',
    'phone': '+48',
  },
  'Portugal': {
    'description': '\u{1F1F5}\u{1F1F9} Portugal (+351)',
    'flag': '\u{1F1F5}\u{1F1F9}',
    'phone': '+351',
  },
  'Puerto Rico': {
    'description': '\u{1F1F5}\u{1F1F7} Puerto Rico (+1)',
    'flag': '\u{1F1F5}\u{1F1F7}',
    'phone': '+1',
  },
  'Qatar': {
    'description': '\u{1F1F6}\u{1F1E6} Qatar (+974)',
    'flag': '\u{1F1F6}\u{1F1E6}',
    'phone': '+974',
  },
  'Réunion': {
    'description': '\u{1F1F7}\u{1F1EA} Réunion (+262)',
    'flag': '\u{1F1F7}\u{1F1EA}',
    'phone': '+262',
  },
  'Romania': {
    'description': '\u{1F1F7}\u{1F1F4} Romania (+40)',
    'flag': '\u{1F1F7}\u{1F1F4}',
    'phone': '+40',
  },
  'Russia': {
    'description': '\u{1F1F7}\u{1F1FA} Russia (+7)',
    'flag': '\u{1F1F7}\u{1F1FA}',
    'phone': '+7',
  },
  'Rwanda': {
    'description': '\u{1F1F7}\u{1F1FC} Rwanda (+250)',
    'flag': '\u{1F1F7}\u{1F1FC}',
    'phone': '+250',
  },
  'Samoa': {
    'description': '\u{1F1FC}\u{1F1F8} Samoa (+685)',
    'flag': '\u{1F1FC}\u{1F1F8}',
    'phone': '+685',
  },
  'San Marino': {
    'description': '\u{1F1F8}\u{1F1F2} San Marino (+378)',
    'flag': '\u{1F1F8}\u{1F1F2}',
    'phone': '+378',
  },
  'Saudi Arabia': {
    'description': '\u{1F1F8}\u{1F1E6} Saudi Arabia (+966)',
    'flag': '\u{1F1F8}\u{1F1E6}',
    'phone': '+966',
  },
  'São Tomé & Príncipe': {
    'description': '\u{1F1F8}\u{1F1F9} São Tomé & Príncipe (+239)',
    'flag': '\u{1F1F8}\u{1F1F9}',
    'phone': '+239',
  },
  'Senegal': {
    'description': '\u{1F1F8}\u{1F1F3} Senegal (+221)',
    'flag': '\u{1F1F8}\u{1F1F3}',
    'phone': '+221',
  },
  'Serbia': {
    'description': '\u{1F1F7}\u{1F1F8} Serbia (+381)',
    'flag': '\u{1F1F7}\u{1F1F8}',
    'phone': '+381',
  },
  'Seychelles': {
    'description': '\u{1F1F8}\u{1F1E8} Seychelles (+248)',
    'flag': '\u{1F1F8}\u{1F1E8}',
    'phone': '+248',
  },
  'Sierra Leone': {
    'description': '\u{1F1F8}\u{1F1F1} Sierra Leone (+232)',
    'flag': '\u{1F1F8}\u{1F1F1}',
    'phone': '+232',
  },
  'Singapore': {
    'description': '\u{1F1F8}\u{1F1EC} Singapore (+65)',
    'flag': '\u{1F1F8}\u{1F1EC}',
    'phone': '+65',
  },
  'Sint Maarten': {
    'description': '\u{1F1F8}\u{1F1FD} Sint Maarten (+1)',
    'flag': '\u{1F1F8}\u{1F1FD}',
    'phone': '+1',
  },
  'Slovakia': {
    'description': '\u{1F1F8}\u{1F1F0} Slovakia (+421)',
    'flag': '\u{1F1F8}\u{1F1F0}',
    'phone': '+421',
  },
  'Slovenia': {
    'description': '\u{1F1F8}\u{1F1EE} Slovenia (+386)',
    'flag': '\u{1F1F8}\u{1F1EE}',
    'phone': '+386',
  },
  'Solomon Islands': {
    'description': '\u{1F1F8}\u{1F1E7} Solomon Islands (+677)',
    'flag': '\u{1F1F8}\u{1F1E7}',
    'phone': '+677',
  },
  'Somalia': {
    'description': '\u{1F1F8}\u{1F1F4} Somalia (+252)',
    'flag': '\u{1F1F8}\u{1F1F4}',
    'phone': '+252',
  },
  'South Africa': {
    'description': '\u{1F1FF}\u{1F1E6} South Africa (+27)',
    'flag': '\u{1F1FF}\u{1F1E6}',
    'phone': '+27',
  },
  'South Korea': {
    'description': '\u{1F1F0}\u{1F1F7} South Korea (+82)',
    'flag': '\u{1F1F0}\u{1F1F7}',
    'phone': '+82',
  },
  'South Sudan': {
    'description': '\u{1F1F8}\u{1F1F8} South Sudan (+211)',
    'flag': '\u{1F1F8}\u{1F1F8}',
    'phone': '+211',
  },
  'Spain': {
    'description': '\u{1F1EA}\u{1F1F8} Spain (+34)',
    'flag': '\u{1F1EA}\u{1F1F8}',
    'phone': '+34',
  },
  'Sri Lanka': {
    'description': '\u{1F1F1}\u{1F1F0} Sri Lanka (+94)',
    'flag': '\u{1F1F1}\u{1F1F0}',
    'phone': '+94',
  },
  'Saint Barthélemy': {
    'description': '\u{1F1E7}\u{1F1F1} Saint Barthélemy (+590)',
    'flag': '\u{1F1E7}\u{1F1F1}',
    'phone': '+590',
  },
  'St. Helena': {
    'description': '\u{1F1F8}\u{1F1ED} St. Helena (+290)',
    'flag': '\u{1F1F8}\u{1F1ED}',
    'phone': '+290',
  },
  'St. Kitts & Nevis': {
    'description': '\u{1F1F0}\u{1F1F3} St. Kitts & Nevis (+1)',
    'flag': '\u{1F1F0}\u{1F1F3}',
    'phone': '+1',
  },
  'St. Lucia': {
    'description': '\u{1F1F1}\u{1F1E8} St. Lucia (+1)',
    'flag': '\u{1F1F1}\u{1F1E8}',
    'phone': '+1',
  },
  'St. Martin': {
    'description': '\u{1F1F2}\u{1F1EB} St. Martin (+590)',
    'flag': '\u{1F1F2}\u{1F1EB}',
    'phone': '+590',
  },
  'St. Pierre & Miquelon': {
    'description': '\u{1F1F5}\u{1F1F2} St. Pierre & Miquelon (+508)',
    'flag': '\u{1F1F5}\u{1F1F2}',
    'phone': '+508',
  },
  'St. Vincent & Grenadines': {
    'description': '\u{1F1FB}\u{1F1E8} St. Vincent & Grenadines (+1)',
    'flag': '\u{1F1FB}\u{1F1E8}',
    'phone': '+1',
  },
  'Sudan': {
    'description': '\u{1F1F8}\u{1F1E9} Sudan (+249)',
    'flag': '\u{1F1F8}\u{1F1E9}',
    'phone': '+249',
  },
  'Suriname': {
    'description': '\u{1F1F8}\u{1F1F7} Suriname (+597)',
    'flag': '\u{1F1F8}\u{1F1F7}',
    'phone': '+597',
  },
  'Svalbard & Jan Mayen': {
    'description': '\u{1F1F8}\u{1F1EF} Svalbard & Jan Mayen (+47)',
    'flag': '\u{1F1F8}\u{1F1EF}',
    'phone': '+47',
  },
  'Sweden': {
    'description': '\u{1F1F8}\u{1F1EA} Sweden (+46)',
    'flag': '\u{1F1F8}\u{1F1EA}',
    'phone': '+46',
  },
  'Switzerland': {
    'description': '\u{1F1E8}\u{1F1ED} Switzerland (+41)',
    'flag': '\u{1F1E8}\u{1F1ED}',
    'phone': '+41',
  },
  'Syria': {
    'description': '\u{1F1F8}\u{1F1FE} Syria (+963)',
    'flag': '\u{1F1F8}\u{1F1FE}',
    'phone': '+963',
  },
  'Taiwan': {
    'description': '\u{1F1F9}\u{1F1FC} Taiwan (+886)',
    'flag': '\u{1F1F9}\u{1F1FC}',
    'phone': '+886',
  },
  'Tajikistan': {
    'description': '\u{1F1F9}\u{1F1EF} Tajikistan (+992)',
    'flag': '\u{1F1F9}\u{1F1EF}',
    'phone': '+992',
  },
  'Tanzania': {
    'description': '\u{1F1F9}\u{1F1FF} Tanzania (+255)',
    'flag': '\u{1F1F9}\u{1F1FF}',
    'phone': '+255',
  },
  'Thailand': {
    'description': '\u{1F1F9}\u{1F1ED} Thailand (+66)',
    'flag': '\u{1F1F9}\u{1F1ED}',
    'phone': '+66',
  },
  'Timor-Leste': {
    'description': '\u{1F1F9}\u{1F1F1} Timor-Leste (+670)',
    'flag': '\u{1F1F9}\u{1F1F1}',
    'phone': '+670',
  },
  'Togo': {
    'description': '\u{1F1F9}\u{1F1EC} Togo (+228)',
    'flag': '\u{1F1F9}\u{1F1EC}',
    'phone': '+228',
  },
  'Tokelau': {
    'description': '\u{1F1F9}\u{1F1F0} Tokelau (+690)',
    'flag': '\u{1F1F9}\u{1F1F0}',
    'phone': '+690',
  },
  'Tonga': {
    'description': '\u{1F1F9}\u{1F1F4} Tonga (+676)',
    'flag': '\u{1F1F9}\u{1F1F4}',
    'phone': '+676',
  },
  'Trinidad & Tobago': {
    'description': '\u{1F1F9}\u{1F1F9} Trinidad & Tobago (+1)',
    'flag': '\u{1F1F9}\u{1F1F9}',
    'phone': '+1',
  },
  'Tristan da Cunha': {
    'description': '\u{1F1F9}\u{1F1E6} Tristan da Cunha (+290)',
    'flag': '\u{1F1F9}\u{1F1E6}',
    'phone': '+290',
  },
  'Tunisia': {
    'description': '\u{1F1F9}\u{1F1F3} Tunisia (+216)',
    'flag': '\u{1F1F9}\u{1F1F3}',
    'phone': '+216',
  },
  'Turkmenistan': {
    'description': '\u{1F1F9}\u{1F1F2} Turkmenistan (+993)',
    'flag': '\u{1F1F9}\u{1F1F2}',
    'phone': '+993',
  },
  'Turks & Caicos Islands': {
    'description': '\u{1F1F9}\u{1F1E8} Turks & Caicos Islands (+1)',
    'flag': '\u{1F1F9}\u{1F1E8}',
    'phone': '+1',
  },
  'Tuvalu': {
    'description': '\u{1F1F9}\u{1F1FB} Tuvalu (+688)',
    'flag': '\u{1F1F9}\u{1F1FB}',
    'phone': '+688',
  },
  'Türkiye': {
    'description': '\u{1F1F9}\u{1F1F7} Türkiye (+90)',
    'flag': '\u{1F1F9}\u{1F1F7}',
    'phone': '+90',
  },
  'U.S. Virgin Islands': {
    'description': '\u{1F1FB}\u{1F1EE} U.S. Virgin Islands (+1 340)',
    'flag': '\u{1F1FB}\u{1F1EE}',
    'phone': '+1 340',
  },
  'Uganda': {
    'description': '\u{1F1FA}\u{1F1EC} Uganda (+256)',
    'flag': '\u{1F1FA}\u{1F1EC}',
    'phone': '+256',
  },
  'Ukraine': {
    'description': '\u{1F1FA}\u{1F1E6} Ukraine (+380)',
    'flag': '\u{1F1FA}\u{1F1E6}',
    'phone': '+380',
  },
  'United Arab Emirates': {
    'description': '\u{1F1E6}\u{1F1EA} United Arab Emirates (+971)',
    'flag': '\u{1F1E6}\u{1F1EA}',
    'phone': '+971',
  },
  'United Kingdom': {
    'description': '\u{1F1EC}\u{1F1E7} United Kingdom (+44)',
    'flag': '\u{1F1EC}\u{1F1E7}',
    'phone': '+44',
  },
  'United States': {
    'description': '\u{1F1FA}\u{1F1F8} United States (+1)',
    'flag': '\u{1F1FA}\u{1F1F8}',
    'phone': '+1',
  },
  'Uruguay': {
    'description': '\u{1F1FA}\u{1F1FE} Uruguay (+598)',
    'flag': '\u{1F1FA}\u{1F1FE}',
    'phone': '+598',
  },
  'Uzbekistan': {
    'description': '\u{1F1FA}\u{1F1FF} Uzbekistan (+998)',
    'flag': '\u{1F1FA}\u{1F1FF}',
    'phone': '+998',
  },
  'Vanuatu': {
    'description': '\u{1F1FB}\u{1F1FA} Vanuatu (+678)',
    'flag': '\u{1F1FB}\u{1F1FA}',
    'phone': '+678',
  },
  'Vatican City': {
    'description': '\u{1F1FB}\u{1F1E6} Vatican City (+379)',
    'flag': '\u{1F1FB}\u{1F1E6}',
    'phone': '+379',
  },
  'Venezuela': {
    'description': '\u{1F1FB}\u{1F1EA} Venezuela (+58)',
    'flag': '\u{1F1FB}\u{1F1EA}',
    'phone': '+58',
  },
  'Vietnam': {
    'description': '\u{1F1FB}\u{1F1F3} Vietnam (+84)',
    'flag': '\u{1F1FB}\u{1F1F3}',
    'phone': '+84',
  },
  'Wallis & Futuna': {
    'description': '\u{1F1FC}\u{1F1EB} Wallis & Futuna (+681)',
    'flag': '\u{1F1FC}\u{1F1EB}',
    'phone': '+681',
  },
  'Western Sahara': {
    'description': '\u{1F1EA}\u{1F1ED} Western Sahara (+212)',
    'flag': '\u{1F1EA}\u{1F1ED}',
    'phone': '+212',
  },
  'Yemen': {
    'description': '\u{1F1FE}\u{1F1EA} Yemen (+967)',
    'flag': '\u{1F1FE}\u{1F1EA}',
    'phone': '+967',
  },
  'Zambia': {
    'description': '\u{1F1FF}\u{1F1F2} Zambia (+260)',
    'flag': '\u{1F1FF}\u{1F1F2}',
    'phone': '+260',
  },
  'Zimbabwe': {
    'description': '\u{1F1FF}\u{1F1FC} Zimbabwe (+263)',
    'flag': '\u{1F1FF}\u{1F1FC}',
    'phone': '+263',
  },
};
