#copy and paste this script into console.
#NOTE: Run this after Timezone Script is complete.
#EOF Error means it finished running.

def find_country(code)
  hash = {"XK"=>"KOSOVO", "VA"=>"HOLY SEE (VATICAN CITY STATE)", "CC"=>"COCOS (KEELING) ISLANDS", "GT"=>"GUATEMALA", "JP"=>"JAPAN", "SE"=>"SWEDEN", "TZ"=>"TANZANIA", "CD"=>"THE DEMOCRATIC REPUBLIC OF THE CONGO", "GU"=>"GUAM", "MM"=>"MYANMAR", "DZ"=>"ALGERIA", "MN"=>"MONGOLIA", "PK"=>"PAKISTAN", "SG"=>"SINGAPORE", "VC"=>"SAINT VINCENT AND THE GRENADINES", "CF"=>"CENTRAL AFRICAN REPUBLIC", "GW"=>"GUINEA-BISSAU", "MO"=>"MACAO", "PL"=>"POLAND", "SH"=>"SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA", "VE"=>"VENEZUELA", "CG"=>"CONGO", "MP"=>"NORTHERN MARIANA ISLANDS", "PM"=>"SAINT PIERRE AND MIQUELON", "SI"=>"SLOVENIA", "ZW"=>"ZIMBABWE", "CH"=>"SWITZERLAND", "GY"=>"GUYANA", "MQ"=>"MARTINIQUE", "PN"=>"PITCAIRN", "SJ"=>"SVALBARD AND JAN MAYEN", "VG"=>"BRITISH VIRGIN ISLANDS", "CI"=>"COTE D'IVOIRE", "MR"=>"MAURITANIA", "SK"=>"SLOVAKIA", "MS"=>"MONTSERRAT", "SL"=>"SIERRA LEONE", "YE"=>"YEMEN", "VI"=>"U.S. VIRGIN ISLANDS", "CK"=>"COOK ISLANDS", "ID"=>"INDONESIA", "MT"=>"MALTA", "SM"=>"SAN MARINO", "CL"=>"CHILE", "IE"=>"IRELAND", "LA"=>"LAO PEOPLE'S DEMOCRATIC REPUBLIC", "MU"=>"MAURITIUS", "SN"=>"SENEGAL", "CM"=>"CAMEROON", "FI"=>"FINLAND", "LB"=>"LEBANON", "MV"=>"MALDIVES", "PR"=>"PUERTO RICO", "SO"=>"SOMALIA", "CN"=>"CHINA", "FJ"=>"FIJI", "LC"=>"SAINT LUCIA", "MW"=>"MALAWI", "PS"=>"PALESTINE", "CO"=>"COLOMBIA", "FK"=>"FALKLAND ISLANDS (MALVINAS)", "MX"=>"MEXICO", "PT"=>"PORTUGAL", "VN"=>"VIETNAM", "MY"=>"MALAYSIA", "SR"=>"SURINAME", "FM"=>"FEDERATED STATES OF MICRONESIA", "MZ"=>"MOZAMBIQUE", "CR"=>"COSTA RICA", "PW"=>"PALAU", "FO"=>"FAROE ISLANDS", "ST"=>"SAO TOME AND PRINCIPE", "IL"=>"ISRAEL", "LI"=>"LIECHTENSTEIN", "PY"=>"PARAGUAY", "BA"=>"BOSNIA AND HERZEGOVINA", "CU"=>"CUBA", "IM"=>"ISLE OF MAN", "SV"=>"EL SALVADOR", "CV"=>"CAPE VERDE", "FR"=>"FRANCE", "IN"=>"INDIA", "LK"=>"SRI LANKA", "VU"=>"VANUATU", "BB"=>"BARBADOS", "CW"=>"CURACAO", "IO"=>"BRITISH INDIAN OCEAN TERRITORY", "SX"=>"SINT MAARTEN (DUTCH PART)", "UA"=>"UKRAINE", "CX"=>"CHRISTMAS ISLAND", "RE"=>"REUNION", "SY"=>"SYRIAN ARAB REPUBLIC", "CY"=>"CYPRUS", "IQ"=>"IRAQ", "SZ"=>"SWAZILAND", "BD"=>"BANGLADESH", "CZ"=>"CZECH REPUBLIC", "IR"=>"ISLAMIC REPUBLIC OF IRAN", "YT"=>"MAYOTTE", "BE"=>"BELGIUM", "IS"=>"ICELAND", "BF"=>"BURKINA FASO", "EC"=>"ECUADOR", "IT"=>"ITALY", "OM"=>"OMAN", "BG"=>"BULGARIA", "BH"=>"BAHRAIN", "UG"=>"UGANDA", "LR"=>"LIBERIA", "BI"=>"BURUNDI", "EE"=>"ESTONIA", "LS"=>"LESOTHO", "BJ"=>"BENIN", "LT"=>"LITHUANIA", "EG"=>"EGYPT", "EH"=>"WESTERN SAHARA", "BL"=>"SAINT BARTHELEMY", "LU"=>"LUXEMBOURG", "RO"=>"ROMANIA", "BM"=>"BERMUDA", "LV"=>"LATVIA", "BN"=>"BRUNEI DARUSSALAM", "UM"=>"UNITED STATES MINOR OUTLYING ISLANDS", "BO"=>"BOLIVIA", "KE"=>"KENYA", "NA"=>"NAMIBIA", "LY"=>"LIBYAN ARAB JAMAHIRIYA", "HOLY SEE"=>"VATICAN CITY STATE", "BQ"=>"BONAIRE", "BR"=>"BRAZIL", "KG"=>"KYRGYZSTAN", "NC"=>"NEW CALEDONIA", "RS"=>"SERBIA", "BS"=>"BAHAMAS", "HK"=>"HONG KONG", "KH"=>"CAMBODIA", "BT"=>"BHUTAN", "KI"=>"KIRIBATI", "NE"=>"NIGER", "QA"=>"QATAR", "RU"=>"RUSSIAN FEDERATION", "US"=>"UNITED STATES", "HM"=>"HEARD ISLAND AND MCDONALD ISLANDS", "NF"=>"NORFOLK ISLAND", "BV"=>"BOUVET ISLAND", "ER"=>"ERITREA", "HN"=>"HONDURAS", "NG"=>"NIGERIA", "RW"=>"RWANDA", "BW"=>"BOTSWANA", "ES"=>"SPAIN", "ET"=>"ETHIOPIA", "NI"=>"NICARAGUA", "AD"=>"ANDORRA", "BY"=>"BELARUS", "KM"=>"COMOROS", "AE"=>"UNITED ARAB EMIRATES", "TC"=>"TURKS AND CAICOS ISLANDS", "BZ"=>"BELIZE", "HR"=>"CROATIA", "KN"=>"SAINT KITTS AND NEVIS", "AF"=>"AFGHANISTAN", "NL"=>"NETHERLANDS", "TD"=>"CHAD", "UY"=>"URUGUAY", "AG"=>"ANTIGUA AND BARBUDA", "HT"=>"HAITI", "KP"=>"NORTH KOREA", "UZ"=>"UZBEKISTAN", "GA"=>"GABON", "HU"=>"HUNGARY", "TF"=>"FRENCH SOUTHERN TERRITORIES", "GB"=>"UNITED KINGDOM", "AI"=>"ANGUILLA", "DE"=>"GERMANY", "KR"=>"SOUTH KOREA", "TG"=>"TOGO", "NO"=>"NORWAY", "TH"=>"THAILAND", "GD"=>"GRENADA", "NP"=>"NEPAL", "ZA"=>"SOUTH AFRICA", "WF"=>"WALLIS AND FUTUNA", "AL"=>"ALBANIA", "GE"=>"GEORGIA", "TJ"=>"TAJIKISTAN", "TK"=>"TOKELAU", "AM"=>"ARMENIA", "GF"=>"FRENCH GUIANA", "NR"=>"NAURU", "DJ"=>"DJIBOUTI", "KW"=>"KUWAIT", "TL"=>"TIMOR-LESTE", "TM"=>"TURKMENISTAN", "AO"=>"ANGOLA", "DK"=>"DENMARK", "GG"=>"GUERNSEY", "TN"=>"TUNISIA", "GH"=>"GHANA", "JE"=>"JERSEY", "MA"=>"MOROCCO", "KY"=>"CAYMAN ISLANDS", "NU"=>"NIUE", "TO"=>"TONGA", "DM"=>"DOMINICA", "GI"=>"GIBRALTAR", "KZ"=>"KAZAKHSTAN", "AQ"=>"ANTARCTICA", "MC"=>"MONACO", "AR"=>"ARGENTINA", "MD"=>"REPUBLIC OF MOLDOVA", "AS"=>"AMERICAN SAMOA", "DO"=>"DOMINICAN REPUBLIC", "TR"=>"TURKEY", "ME"=>"MONTENEGRO", "PA"=>"PANAMA", "AT"=>"AUSTRIA", "GL"=>"GREENLAND", "MF"=>"SAINT MARTIN (FRENCH PART)", "NZ"=>"NEW ZEALAND", "AU"=>"AUSTRALIA", "GM"=>"GAMBIA", "MG"=>"MADAGASCAR", "GN"=>"GUINEA", "ZM"=>"ZAMBIA", "TT"=>"TRINIDAD AND TOBAGO", "MH"=>"MARSHALL ISLANDS", "AW"=>"ARUBA", "PE"=>"PERU", "SA"=>"SAUDI ARABIA", "AX"=>"ALAND ISLANDS", "GP"=>"GUADELOUPE", "TV"=>"TUVALU", "PF"=>"FRENCH POLYNESIA", "SB"=>"SOLOMON ISLANDS", "WS"=>"SAMOA", "CA"=>"CANADA", "GQ"=>"EQUATORIAL GUINEA", "JM"=>"JAMAICA", "SC"=>"SEYCHELLES", "TW"=>"TAIWAN, PROVINCE OF CHINA", "AZ"=>"AZERBAIJAN", "GR"=>"GREECE", "MK"=>"MACEDONIA", "PG"=>"PAPUA NEW GUINEA", "SD"=>"SUDAN", "GS"=>"SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS", "JO"=>"JORDAN", "ML"=>"MALI", "PH"=>"PHILIPPINES"}
  return hash[code.upcase]
end

def find_timezone(code)
  Timezone.find_by_name(code)
end

# point this file to the .txt that location data is in
f=File.open("db/cities15000.txt", "r")


while(true)
  line = f.readline()
  arr = line.split("\t")
  
  name = arr[2].capitalize
  lat = arr[4]
  lng = arr[5]
  country = find_country(arr[8])
  population = arr[14]
  gtopo30 = arr[16]
  timezone = find_timezone(arr[17])
  
  Geocode.create({
    :name => name,
    :latitude => lat,
    :longitude => lng,
    :country => country,
    :population => population,
    :gtopo30 => gtopo30,
    :timezone => timezone
  })
end



  
