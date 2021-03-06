module Countries
  ALPHA_2_SELECTION = [%w[Afghanistan AF],
                       ['Åland Islands', 'AX'],
                       %w[Albania AL],
                       %w[Algeria DZ],
                       ['American Samoa', 'AS'],
                       %w[Andorra AD],
                       %w[Angola AO],
                       %w[Anguilla AI],
                       %w[Antarctica AQ],
                       ['Antigua and Barbuda', 'AG'],
                       %w[Argentina AR],
                       %w[Armenia AM],
                       %w[Aruba AW],
                       %w[Australia AU],
                       %w[Austria AT],
                       %w[Azerbaijan AZ],
                       %w[Bahamas BS],
                       %w[Bahrain BH],
                       %w[Bangladesh BD],
                       %w[Barbados BB],
                       %w[Belarus BY],
                       %w[Belgium BE],
                       %w[Belize BZ],
                       %w[Benin BJ],
                       %w[Bermuda BM],
                       %w[Bhutan BT],
                       ['Bolivia, Plurinational State of', 'BO'],
                       ['Bonaire, Sint Eustatius and Saba', 'BQ'],
                       ['Bosnia and Herzegovina', 'BA'],
                       %w[Botswana BW],
                       ['Bouvet Island', 'BV'],
                       %w[Brazil BR],
                       ['British Indian Ocean Territory', 'IO'],
                       ['Brunei Darussalam', 'BN'],
                       %w[Bulgaria BG],
                       ['Burkina Faso', 'BF'],
                       %w[Burundi BI],
                       %w[Cambodia KH],
                       %w[Cameroon CM],
                       %w[Canada CA],
                       ['Cape Verde', 'CV'],
                       ['Cayman Islands', 'KY'],
                       ['Central African Republic', 'CF'],
                       %w[Chad TD],
                       %w[Chile CL],
                       %w[China CN],
                       ['Christmas Island', 'CX'],
                       ['Cocos (Keeling) Islands', 'CC'],
                       %w[Colombia CO],
                       %w[Comoros KM],
                       %w[Congo CG],
                       ['Congo, the Democratic Republic of the', 'CD'],
                       ['Cook Islands', 'CK'],
                       ['Costa Rica', 'CR'],
                       ["Côte d'Ivoire", 'CI'],
                       %w[Croatia HR],
                       %w[Cuba CU],
                       %w[Curaçao CW],
                       %w[Cyprus CY],
                       ['Czech Republic', 'CZ'],
                       %w[Denmark DK],
                       %w[Djibouti DJ],
                       %w[Dominica DM],
                       ['Dominican Republic', 'DO'],
                       %w[Ecuador EC],
                       %w[Egypt EG],
                       ['El Salvador', 'SV'],
                       ['Equatorial Guinea', 'GQ'],
                       %w[Eritrea ER],
                       %w[Estonia EE],
                       %w[Ethiopia ET],
                       ['Falkland Islands (Malvinas)', 'FK'],
                       ['Faroe Islands', 'FO'],
                       %w[Fiji FJ],
                       %w[Finland FI],
                       %w[France FR],
                       ['French Guiana', 'GF'],
                       ['French Polynesia', 'PF'],
                       ['French Southern Territories', 'TF'],
                       %w[Gabon GA],
                       %w[Gambia GM],
                       %w[Georgia GE],
                       %w[Germany DE],
                       %w[Ghana GH],
                       %w[Gibraltar GI],
                       %w[Greece GR],
                       %w[Greenland GL],
                       %w[Grenada GD],
                       %w[Guadeloupe GP],
                       %w[Guam GU],
                       %w[Guatemala GT],
                       %w[Guernsey GG],
                       %w[Guinea GN],
                       ['Guinea-Bissau', 'GW'],
                       %w[Guyana GY],
                       %w[Haiti HT],
                       ['Heard Island and McDonald Islands', 'HM'],
                       ['Holy See (Vatican City State)', 'VA'],
                       %w[Honduras HN],
                       ['Hong Kong', 'HK'],
                       %w[Hungary HU],
                       %w[Iceland IS],
                       %w[India IN],
                       %w[Indonesia ID],
                       ['Iran, Islamic Republic of', 'IR'],
                       %w[Iraq IQ],
                       %w[Ireland IE],
                       ['Isle of Man', 'IM'],
                       %w[Israel IL],
                       %w[Italy IT],
                       %w[Jamaica JM],
                       %w[Japan JP],
                       %w[Jersey JE],
                       %w[Jordan JO],
                       %w[Kazakhstan KZ],
                       %w[Kenya KE],
                       %w[Kiribati KI],
                       ["Korea, Democratic People's Republic of", 'KP'],
                       ['Korea, Republic of', 'KR'],
                       %w[Kuwait KW],
                       %w[Kyrgyzstan KG],
                       ["Lao People's Democratic Republic", 'LA'],
                       %w[Latvia LV],
                       %w[Lebanon LB],
                       %w[Lesotho LS],
                       %w[Liberia LR],
                       %w[Libya LY],
                       %w[Liechtenstein LI],
                       %w[Lithuania LT],
                       %w[Luxembourg LU],
                       %w[Macao MO],
                       ['Macedonia, the Former Yugoslav Republic of', 'MK'],
                       %w[Madagascar MG],
                       %w[Malawi MW],
                       %w[Malaysia MY],
                       %w[Maldives MV],
                       %w[Mali ML],
                       %w[Malta MT],
                       ['Marshall Islands', 'MH'],
                       %w[Martinique MQ],
                       %w[Mauritania MR],
                       %w[Mauritius MU],
                       %w[Mayotte YT],
                       %w[Mexico MX],
                       ['Micronesia, Federated States of', 'FM'],
                       ['Moldova, Republic of', 'MD'],
                       %w[Monaco MC],
                       %w[Mongolia MN],
                       %w[Montenegro ME],
                       %w[Montserrat MS],
                       %w[Morocco MA],
                       %w[Mozambique MZ],
                       %w[Myanmar MM],
                       %w[Namibia NA],
                       %w[Nauru NR],
                       %w[Nepal NP],
                       %w[Netherlands NL],
                       ['New Caledonia', 'NC'],
                       ['New Zealand', 'NZ'],
                       %w[Nicaragua NI],
                       %w[Niger NE],
                       %w[Nigeria NG],
                       %w[Niue NU],
                       ['Norfolk Island', 'NF'],
                       ['Northern Mariana Islands', 'MP'],
                       %w[Norway NO],
                       %w[Oman OM],
                       %w[Pakistan PK],
                       %w[Palau PW],
                       ['Palestine, State of', 'PS'],
                       %w[Panama PA],
                       ['Papua New Guinea', 'PG'],
                       %w[Paraguay PY],
                       %w[Peru PE],
                       %w[Philippines PH],
                       %w[Pitcairn PN],
                       %w[Poland PL],
                       %w[Portugal PT],
                       ['Puerto Rico', 'PR'],
                       %w[Qatar QA],
                       %w[Réunion RE],
                       %w[Romania RO],
                       ['Russian Federation', 'RU'],
                       %w[Rwanda RW],
                       ['Saint Barthélemy', 'BL'],
                       ['Saint Helena, Ascension and Tristan da Cunha', 'SH'],
                       ['Saint Kitts and Nevis', 'KN'],
                       ['Saint Lucia', 'LC'],
                       ['Saint Martin (French part)', 'MF'],
                       ['Saint Pierre and Miquelon', 'PM'],
                       ['Saint Vincent and the Grenadines', 'VC'],
                       %w[Samoa WS],
                       ['San Marino', 'SM'],
                       ['Sao Tome and Principe', 'ST'],
                       ['Saudi Arabia', 'SA'],
                       %w[Senegal SN],
                       %w[Serbia RS],
                       %w[Seychelles SC],
                       ['Sierra Leone', 'SL'],
                       %w[Singapore SG],
                       ['Sint Maarten (Dutch part)', 'SX'],
                       %w[Slovakia SK],
                       %w[Slovenia SI],
                       ['Solomon Islands', 'SB'],
                       %w[Somalia SO],
                       ['South Africa', 'ZA'],
                       ['South Georgia and the South Sandwich Islands', 'GS'],
                       ['South Sudan', 'SS'],
                       %w[Spain ES],
                       ['Sri Lanka', 'LK'],
                       %w[Sudan SD],
                       %w[Suriname SR],
                       ['Svalbard and Jan Mayen', 'SJ'],
                       %w[Swaziland SZ],
                       %w[Sweden SE],
                       %w[Switzerland CH],
                       ['Syrian Arab Republic', 'SY'],
                       ['Taiwan, Province of China', 'TW'],
                       %w[Tajikistan TJ],
                       ['Tanzania, United Republic of', 'TZ'],
                       %w[Thailand TH],
                       ['Timor-Leste', 'TL'],
                       %w[Togo TG],
                       %w[Tokelau TK],
                       %w[Tonga TO],
                       ['Trinidad and Tobago', 'TT'],
                       %w[Tunisia TN],
                       %w[Turkey TR],
                       %w[Turkmenistan TM],
                       ['Turks and Caicos Islands', 'TC'],
                       %w[Tuvalu TV],
                       %w[Uganda UG],
                       %w[Ukraine UA],
                       ['United Arab Emirates', 'AE'],
                       ['United Kingdom', 'GB'],
                       ['United States', 'US'],
                       ['United States Minor Outlying Islands', 'UM'],
                       %w[Uruguay UY],
                       %w[Uzbekistan UZ],
                       %w[Vanuatu VU],
                       ['Venezuela, Bolivarian Republic of', 'VE'],
                       ['Viet Nam', 'VN'],
                       ['Virgin Islands, British', 'VG'],
                       ['Virgin Islands, U.S.', 'VI'],
                       ['Wallis and Futuna', 'WF'],
                       ['Western Sahara', 'EH'],
                       %w[Yemen YE],
                       %w[Zambia ZM],
                       %w[Zimbabwe ZW]].freeze
end
