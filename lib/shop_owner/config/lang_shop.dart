class LangData{
  String name;
  String engName;
  String image;
  bool current;
  int id;
  LangData({this.name, this.engName, this.image, this.current, this.id});
}

class LangShop {

  static var english = 1;
  static var german = 2;
  static var espanol = 3;
  static var french = 4;
  static var korean = 5;

  List<LangData> langData = [
    LangData(name: "English", engName: "English", image: "assets/usa.png", current: false, id: english),
    LangData(name: "German", engName: "Deutsh", image: "assets/ger.png", current: false, id: german),
    LangData(name: "Spanish", engName: "Spana", image: "assets/esp.png", current: false, id: espanol),
    LangData(name: "French", engName: "French", image: "assets/fra.png", current: false, id: french),
    LangData(name: "Korean", engName: "Korean", image: "assets/kor.png", current: false, id: korean),
  ];

  Map<int, String> langKorean = {
    0: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    1 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    2 : "Lorem ipsum",
    3 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ",
    10 : "Food Delivery Boy Flutter App UI Kit",
    11 : "계정이 없으십니까? 생성",
    12 : "비밀번호 분실",
    13 : "로그인부터 시작하겠습니다!",
    14 : "로그인",
    15 : "비밀번호",
    16 : "로그인",
    17 : "비밀번호 분실",
    18 : "이메일 주소",
    19 : "보내기",
    20 : "계정 만들기!",
    21 : "로그인",
    22 : "비밀번호 확인",
    23 : "계정 생성",
    24 : "주문",
    25 : "알림",
    26 : "도움말 및 지원",
    27 : "계정",
    28 : "언어",
    29 : "로그 아웃",
    30 : "앱 언어",
    31 : "로그 아웃",
    32 : "사용자 이름",
    33 : "이메일",
    34 : "제품",
    35 : "서비스",
    36 : "배달",
    37 : "기타",
    38 : "도움말 및 지원",
    39 : "알림 없음",
    40 : "이것은 매우 중요한 정보입니다",
    41 : "모두",
    42 : "준비 중",
    43 : "준비",
    44 : "주문 ID",
    45 : "날짜",
    46 : "거리",
    47 : "지도에서",
    48 : "수락",
    49 : "km",
    50 : "주문 없음",
    51 : "완료",
    52 : "고객 이름",
    53 : "고객 전화",
    54 : "고객에게 전화",
    55 : "주문으로 돌아 가기",
    56 : "주문 정보",
    57 : "소계",
    58 : "쇼핑 비용",
    59 : "세금",
    60 : "합계",
    61 : "지도로 돌아 가기",
    62 : "온라인 / 오프라인",
    63 : "전화",
    64 : "프로필 편집",
    65 : "저장",
    66 : "취소",
    67 : "사용자 이름 입력",
    68 : "사용자 이메일 입력",
    69 : "사용자 전화 번호 입력",
    70 : "비밀번호 변경",
    71 : "변경",
    72 : "이전 비밀번호",
    73 : "이전 비밀번호 입력",
    74 : "새 비밀번호",
    75 : "새 비밀번호 입력",
    76 : "새 비밀번호 확인",
    77 : "갤러리 열기",
    78 : "카메라 열기",
    79 : "통계",
    80 : "수입",
    81 : "주",
    82 : "월",
    83 : "수입",
    84 : "거부",
    85 : "거부 이유",
    86 : "보내기",
    87 : "이유 입력",
    88 : "여기",
    89 : "지도",
    90 : "총 수입",
    91 : "주문",
    92 : "전체 레스토랑",
    93 : "총 음식",
    94 : "음식",
    95 : "수신 됨",
    96 : "가는 중",
    97 : "배달 됨",
    98 : "상태",
    99 : "다음으로 설정",
    100 : "드라이버 설정",
    101 : "드라이버 변경",
    102 : "온라인",
    103 : "오프라인",
    104 : "드라이버",
    105 : "내 레스토랑",
    106 : "새 식당 추가",
    107 : "삭제",
    108 : "편집",
    109 : "예, 삭제하세요!",
    110 : "아니요, 취소 해주세요!",
    111 : "확실 해요?",
    112 : "이 항목을 복구 할 수 없습니다!",
    113 : "이름",
    114 : "식당 이름 입력",
    115 : "주소",
    116 : "식당 주소 입력",
    117 : "식당 전화 입력",
    118 : "위도",
    119 : "위도를 입력하세요. 예 : 52.2165157",
    120 : "경도",
    121 : "경도를 입력하세요. 예 : 2.331359",
    122 : "지도에서 위치 선택",
    123 : "설명",
    124 : "설명 입력",
    125 : "이미지 선택은 여기를 클릭하세요",
    126 : "다음에서 이미지 선택 :",
    127 : "카메라",
    128 : "갤러리",
    129 : "장소를 선택하고 돌아 가기",
    130 : "식당 휴대 전화 입력",
    131 : "식당 수정",
    132 : "식당 수정",
    133 : "요리 목록",
    134 : "내 요리",
    135 : "범주",
    136 : "요리 추가",
    137 : "요리 편집",
    138 : "새 요리 추가",
    139 : "요리 이름 입력",
    140 : "가격",
    141 : "요리 가격 입력",
    142 : "할인 가격",
    143 : "할인 가격 입력",
    144 : "재료",
    145 : "재료 입력",
    146 : "요리 카테고리 선택",
    147 : "모두",
    148 : "휴대 전화",
    149 : "메뉴",
    150 : "접시",
    151 : "리뷰",
    152 : "재료",
    153 : "정보",
  };

  Map<int, String> langFrench = {
    0: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    1 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    2 : "Lorem ipsum",
    3 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ",
    10 : "Food Delivery Boy Flutter App UI Kit",
    11: "Hawwe jo gjin akkount? Meitsje",
    12: "Wachtwurd ferjitten",
    13: "Litte wy begjinne mei Oanmelde!",
    14: "Oanmelde",
    15: "Wachtwurd",
    16: "LOGIN",
    17: "Wachtwurd ferjitten",
    18: "E-postadres",
    19: "ferstjoere",
    20: "In akkount oanmeitsje!",
    21: "Oanmelde",
    22: "Wachtwurd befestigje",
    23: "AREKONNE meitsje",
    24: "Oarders",
    25: "Notifikaasjes",
    26: "Help & Support",
    27: "Akkount",
    28: "Talen",
    29: "Ofmelde",
    30: "App-taal",
    31: "Ofmelde",
    32: "Brûkersnamme",
    33: "E-post",
    34: "Produkten",
    35: "Tsjinsten",
    36: "Levering",
    37: "Misc",
    38: "Help & stipe",
    39: "Gjin notifikaasjes hawwe",
    40: "Dit is heul wichtige ynformaasje",
    41: "Alles",
    42: "Tariede",
    43: "Klear",
    44: "Bestel-ID",
    45: "Datum",
    46: "Ofstân",
    47: "Op kaart",
    48: "Akseptearje",
    49: "km",
    50: "Gjin oarders hawwe",
    51: "Folslein",
    52: "Klantnamme",
    53: "Klanttillefoan",
    54: "Belje nei klant",
    55: "Werom nei oarders",
    56: "Besteldetails",
    57: "Subtotaal",
    58: "Winkelje kosten",
    59: "Belestingen",
    60: "Totaal",
    61: "Werom nei kaart",
    62: "Online / Offline",
    63: "Telefoan",
    64: "Profiel bewurkje",
    65: "Bewarje",
    66: "Ofbrekke",
    67: "Fier jo brûkersnamme yn",
    68: "Fier jo brûkers-e-post yn",
    69: "Fier jo brûkerstillefoan yn",
    70: "Wachtwurd feroarje",
    71: "Feroarje",
    72: "Ald wachtwurd",
    73: "Fier jo âlde wachtwurd yn",
    74: "Nij wachtwurd",
    75: "Fier jo nije wachtwurd yn",
    76: "Befestigje nij wachtwurd",
    77: "Iepenje galery",
    78: "Kamera iepenje",
    79: "Statistiken",
    80: "Earnings",
    81: "wike",
    82: "moanne",
    83: "Fertsjinje",
    84: "Ofwizing",
    85: "Reden om te wegerjen",
    86: "Ferstjoere",
    87: "Enter Reason",
    88: "hjir",
    89: "Map",
    90: "Totaal fertsjinjen",
    91: "Oarders",
    92: "Totale restaurants",
    93: "Totaal iten",
    94: "Iten",
    95: "Untfongen",
    96: "Underweis",
    97: "Levert",
    98: "Status",
    99: "Ynstelle",
    100: "Stjoerprogramma ynstelle",
    101: "Driver feroarje",
    102: "online",
    103: "offline",
    104: "Bestjoerder",
    105: "Myn restaurants",
    106: "Nij restaurant tafoegje",
    107: "Wiskje",
    108: "Bewurkje",
    109: "Ja, wiskje it!",
    110: "Nee, pls ôfbrekke!",
    111: "Binne jo wis?",
    112: "Jo kinne dit item net herstelle!",
    113: "Namme",
    114: "Fier restaurantnamme yn",
    115: "Adres",
    116: "Restaurantadres ynfiere",
    117: "Enter Restaurant Phone",
    118: "Lingtegraad",
    119: "Fier Breedte yn. Foarbyld: 52.2165157",
    120: "Lingtegraad",
    121: "Lingtegraad ynfiere. Foarbyld: 2.331359",
    122: "Posysje selektearje op kaart",
    123: "Beskriuwing",
    124: "Omskriuwing ynfiere",
    125: "Klik hjir foar selektearje Ofbylding",
    126: "Ofbylding selektearje út:",
    127: "Kamera",
    128: "Galery",
    129: "Selektearje plak en weromgean",
    130: "Enter Restaurant mobile tillefoan",
    131: "Bewurkje restaurant",
    132: "Bewurkje restaurant",
    133: "Gerjochtenlist",
    134: "Myn gerjochten",
    135: "Kategory",
    136: "Gerjochten tafoegje",
    137: "Gerjochten bewurkje",
    138: "Nije gerjochten tafoegje",
    139: "Namme gerjochten ynfiere",
    140: "Priis",
    141: "Fier gerjochten yn",
    142: "Koartingspriis",
    143: "Fier koartingspriis yn",
    144: "Yngrediïnten",
    145: "Yngrediïnten ynfiere",
    146: "Kieze gerjochten kategory",
    147: "Alles",
    148: "Mobiele tillefoan",
    149: "Menu",
    150: "Gerjochten",
    151: "Resinsjes",
    152: "Yngrediïnten",
    153: "Ynformaasje",
  };

  Map<int, String> langDeu = {
    0 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    1 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    2 : "Lorem ipsum",
    3 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ",
    10 : "Food Delivery Boy Flutter App UI Kit",
    11: "Sie haben noch kein Konto? Erstellen",
    12: "Passwort vergessen",
    13: "Beginnen wir mit LogIn!",
    14: "Login",
    15: "Passwort",
    16: "LOGIN",
    17: "Passwort vergessen",
    18: "E-Mail-Adresse",
    19: "SENDEN",
    20: "Konto erstellen!",
    21: "Login",
    22: "Passwort bestätigen",
    23: "KONTO ERSTELLEN",
    24: "Bestellungen",
    25: "Benachrichtigungen",
    26: "Hilfe & Support",
    27: "Konto",
    28: "Sprachen",
    29: "Abmelden",
    30: "App Language",
    31: "Abmelden",
    32: "Benutzername",
    33: "E-Mail",
    34: "Produkte",
    35: "Dienstleistungen",
    36: "Lieferung",
    37: "Verschiedenes",
    38: "Hilfe & Support",
    39: "Keine Benachrichtigungen haben",
    40: "Dies ist eine sehr wichtige Information",
    41: "Alle",
    42: "Vorbereiten",
    43: "Fertig",
    44: "Bestellnummer",
    45: "Datum",
    46: "Entfernung",
    47: "Auf Karte",
    48: "Akzeptieren",
    49: "km",
    50: "Keine Bestellungen haben",
    51: "Vollständig",
    52: "Kundenname",
    53: "Kundentelefon",
    54: "Anruf beim Kunden",
    55: "Zurück zu Bestellungen",
    56: "Bestelldetails",
    57: "Zwischensumme",
    58: "Einkaufskosten",
    59: "Steuern",
    60: "Gesamt",
    61: "Zurück zur Karte",
    62: "Online / Offline",
    63: "Telefon",
    64: "Profil bearbeiten",
    65: "Speichern",
    66: "Abbrechen",
    67: "Geben Sie Ihren Benutzernamen ein",
    68: "Geben Sie Ihre Benutzer-E-Mail-Adresse ein",
    69: "Geben Sie Ihr Benutzertelefon ein",
    70: "Passwort ändern",
    71: "Ändern",
    72: "Altes Passwort",
    73: "Geben Sie Ihr altes Passwort ein",
    74: "Neues Passwort",
    75: "Geben Sie Ihr neues Passwort ein",
    76: "Neues Passwort bestätigen",
    77: "Galerie öffnen",
    78: "Kamera öffnen",
    79: "Statistik",
    80: "Einnahmen",
    81: "Woche",
    82: "Monat",
    83: "Verdienen",
    84: "Ablehnung",
    85: "Grund zur Ablehnung",
    86: "Senden",
    87: "Grund eingeben",
    88: "hier",
    89: "Karte",
    90: "Gesamteinkommen",
    91: "Bestellungen",
    92: "Restaurants insgesamt",
    93: "Total Foods",
    94: "Lebensmittel",
    95: "Erhalten",
    96: "Unterwegs",
    97: "Geliefert",
    98: "Status",
    99: "Set To",
    100: "Treiber einstellen",
    101: "Treiber wechseln",
    102: "online",
    103: "offline",
    104: "Fahrer",
    105: "Meine Restaurants",
    106: "Neues Restaurant hinzufügen",
    107: "Löschen",
    108: "Bearbeiten",
    109: "Ja, lösche es!",
    110: "Nein, bitte stornieren!",
    111: "Bist du sicher?",
    112: "Sie können diesen Gegenstand nicht wiederherstellen!",
    113: "Name",
    114: "Geben Sie den Namen des Restaurants ein",
    115: "Adresse",
    116: "Restaurantadresse eingeben",
    117: "Restauranttelefon eingeben",
    118: "Latitude",
    119: "Breite eingeben. Beispiel: 52.2165157",
    120: "Längengrad",
    121: "Längengrad eingeben. Beispiel: 2.331359",
    122: "Position auf Karte auswählen",
    123: "Beschreibung",
    124: "Beschreibung eingeben",
    125: "Klicken Sie hier, um das Bild auszuwählen",
    126: "Bild auswählen aus:",
    127: "Kamera",
    128: "Galerie",
    129: "Ort auswählen und zurückgehen",
    130: "Restaurant Handy eingeben",
    131: "Restaurant bearbeiten",
    132: "Restaurant bearbeiten",
    133: "Geschirrliste",
    134: "Meine Gerichte",
    135: "Kategorie",
    136: "Gerichte hinzufügen",
    137: "Gerichte bearbeiten",
    138: "Neue Gerichte hinzufügen",
    139: "Geben Sie den Namen des Gerichts ein",
    140: "Preis",
    141: "Geschirrpreis eingeben",
    142: "Rabattpreis",
    143: "Rabattpreis eingeben",
    144: "Zutaten",
    145: "Zutaten eingeben",
    146: "Wählen Sie die Kategorie Gerichte",
    147: "Alle",
    148: "Mobiltelefon",
    149: "Menü",
    150: "Gerichte",
    151: "Bewertungen",
    152: "Zutaten",
    153: "Information",
  };

  Map<int, String> langEsp = {
    0 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    1 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    2 : "Lorem ipsum",
    3 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ",
    10 : "Food Delivery Boy Flutter App UI Kit",
    11: "¿No tienes una cuenta? Crear",
    12: "Contraseña olvidada",
    13: "¡Empecemos con Iniciar sesión!",
    14: "Iniciar sesión",
    15: "Contraseña",
    16: "INICIAR SESIÓN",
    17: "Contraseña olvidada",
    18: "Dirección de correo electrónico",
    19: "ENVIAR",
    20: "¡Crea una cuenta!",
    21: "Iniciar sesión",
    22: "Confirmar contraseña",
    23: "CREAR CUENTA",
    24: "Pedidos",
    25: "Notificaciones",
    26: "Ayuda y soporte técnico",
    27: "Cuenta",
    28: "Idiomas",
    29: "Cerrar sesión",
    30: "Idioma de la aplicación",
    31: "Cerrar sesión",
    32: "Nombre de usuario",
    33: "Correo electrónico",
    34: "Productos",
    35: "Servicios",
    36: "Entrega",
    37: "Varios",
    38: "Ayuda y soporte",
    39: "No tener notificaciones",
    40: "Esta es información muy importante",
    41: "Todos",
    42: "Preparando",
    43: "Listo",
    44: "ID de pedido",
    45: "Fecha",
    46: "Distancia",
    47: "En el mapa",
    48: "Aceptar",
    49: "km",
    50: "No tener pedidos",
    51: "Completo",
    52: "Nombre del cliente",
    53: "Teléfono del cliente",
    54: "Llamar al cliente",
    55: "Volver a pedidos",
    56: "Detalles del pedido",
    57: "Subtotal",
    58: "Costos de compra",
    59: "Impuestos",
    60: "Total",
    61: "Volver al mapa",
    62: "En línea / Fuera de línea",
    63: "Teléfono",
    64: "Editar perfil",
    65: "Guardar",
    66: "Cancelar",
    67: "Introduzca su nombre de usuario",
    68: "Introduzca su correo electrónico de usuario",
    69: "Ingrese su teléfono de usuario",
    70: "Cambiar contraseña",
    71: "Cambiar",
    72: "Contraseña anterior",
    73: "Ingrese su contraseña anterior",
    74: "Nueva contraseña",
    75: "Ingrese su nueva contraseña",
    76: "Confirmar nueva contraseña",
    77: "Abrir galería",
    78: "Cámara abierta",
    79: "Estadísticas",
    80: "Ingresos",
    81: "semana",
    82: "mes",
    83: "Ganancia",
    84: "Rechazo",
    85: "Razón para rechazar",
    86: "Enviar",
    87: "Ingrese el motivo",
    88: "aquí",
    89: "Mapa",
    90: "Ingresos totales",
    91: "Pedidos",
    92: "Total de restaurantes",
    93: "Total de alimentos",
    94: "Alimentos",
    95: "Recibido",
    96: "En camino",
    97: "Entregado",
    98: "Estado",
    99: "Establecer en",
    100: "Establecer controlador",
    101: "Cambiar controlador",
    102: "en línea",
    103: "sin conexión",
    104: "Conductor",
    105: "Mis restaurantes",
    106: "Agregar nuevo restaurante",
    107: "Eliminar",
    108: "Editar",
    109: "¡Sí, bórralo!",
    110: "¡No, cancelar pls!",
    111: "¿Estás seguro?",
    112: "¡No podrás recuperar este elemento!",
    113: "Nombre",
    114: "Introduzca el nombre del restaurante",
    115: "Dirección",
    116: "Introduzca la dirección del restaurante",
    117: "Ingresar teléfono del restaurante",
    118: "Latitud",
    119: "Ingrese Latitud. Ejemplo: 52.2165157",
    120: "Longitud",
    121: "Introduzca la longitud. Ejemplo: 2,331359",
    122: "Seleccionar posición en el mapa",
    123: "Descripción",
    124: "Introducir descripción",
    125: "Haga clic aquí para seleccionar la imagen",
    126: "Seleccionar imagen de:",
    127: "Cámara",
    128: "Galería",
    129: "Seleccionar lugar y volver",
    130: "Introduzca el teléfono móvil del restaurante",
    131: "Editar restaurante",
    132: "Editar restaurante",
    133: "Lista de platos",
    134: "Mis platos",
    135: "Categoría",
    136: "Agregar platos",
    137: "Editar platos",
    138: "Agregar nuevos platos",
    139: "Introducir nombre de platos",
    140: "Precio",
    141: "Ingrese el precio de los platos",
    142: "Precio de descuento",
    143: "Introducir precio de descuento",
    144: "Ingredientes",
    145: "Introducir ingredientes",
    146: "Elegir categoría de platos",
    147: "Todos",
    148: "Teléfono móvil",
    149: "Menú",
    150: "Platos",
    151: "Reseñas",
    152: "Ingredientes",
    153: "Información",
  };

  Map<int, String> langEng = {
    0 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    1 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    2 : "Lorem ipsum",
    3 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ",
    10 : "Food Delivery Boy Flutter App UI Kit",
    11 : "Don't have an account? Create",
    12 : "Forgot password",
    13 : "Let's start with LogIn!",
    14 : "Login",
    15 : "Password",
    16 : "LOGIN",
    17 : "Forgot password",
    18 : "E-mail address",
    19 : "SEND",
    20 : "Create an Account!",
    21 : "Login",
    22 : "Confirm Password",
    23 : "CREATE ACCOUNT",
    24 : "Orders",
    25 : "Notifications",
    26 : "Help & Support",
    27 : "Account",
    28 : "Languages",
    29 : "Sign Out",
    30 : "App Language",
    31 : "Log Out",
    32 : "User Name",
    33 : "E-mail",
    34 : "Products",
    35 : "Services",
    36 : "Delivery",
    37 : "Misc",
    38 : "Help & support",
    39 : "Not Have Notifications",
    40 : "This is very important information",
    41 : "All",
    42 : "Preparing",
    43 : "Ready",
    44 : "Order ID",
    45 : "Date",
    46 : "Distance",
    47 : "On Map",
    48 : "Accept",
    49 : "km",
    50 : "Not Have Orders",
    51 : "Complete",
    52 : "Customer name",
    53 : "Customer phone",
    54 : "Call to Customer",
    55 : "Back to Orders",
    56 : "Order Details",
    57 : "Subtotal",
    58 : "Shopping costs",
    59 : "Taxes",
    60 : "Total",
    61 : "Back to Map",
    62 : "Online/Offline",
    63 : "Phone",
    64 : "Edit profile",
    65 : "Save",
    66 : "Cancel",
    67 : "Enter your User Name",
    68 : "Enter your User E-mail",
    69 : "Enter your User Phone",
    70 : "Change password",
    71 : "Change",
    72 : "Old password",
    73 : "Enter your old password",
    74 : "New password",
    75 : "Enter your new password",
    76 : "Confirm New password",
    77 : "Open Gallery",
    78 : "Open Camera",
    79 : "Statistics",
    80 : "Earnings",
    81 : "week",
    82 : "month",
    83 : "Earning",
    84 : "Rejection",
    85 : "Reason to Reject",
    86 : "Send",
    87 : "Enter Reason",
    88 : "here",
    89 : "Map",
    90 : "Total Earning",
    91 : "Orders",
    92 : "Total Restaurants",
    93 : "Total Foods",
    94 : "Foods",
    95 : "Received",
    96 : "On the way",
    97 : "Delivered",
    98 : "Status",
    99 : "Set To",
    100 : "Set Driver",
    101 : "Change Driver",
    102 : "online",
    103 : "offline",
    104 : "Driver",
    105 : "My Restaurants",
    106 : "Add new Restaurant",
    107 : "Delete",
    108 : "Edit",
    109 : "Yes, delete it!",
    110 : "No, cancel pls!",
    111 : "Are you sure?",
    112 : "You will not be able to recover this item!",
    113 : "Name",
    114 : "Enter Restaurant Name",
    115 : "Address",
    116 : "Enter Restaurant Address",
    117 : "Enter Restaurant Phone",
    118 : "Latitude",
    119 : "Enter Latitude. Example: 52.2165157",
    120 : "Longitude",
    121 : "Enter Longitude. Example: 2.331359",
    122 : "Select position on Map",
    123 : "Description",
    124 : "Enter description",
    125 : "Click here for select Image",
    126 : "Select image from:",
    127 : "Camera",
    128 : "Gallery",
    129 : "Select Place and Go Back",
    130 : "Enter Restaurant Mobile Phone",
    131 : "Edit Restaurant",
    132 : "Edit Restaurant",
    133 : "Dishes List",
    134 : "My Dishes",
    135 : "Category",
    136 : "Add Dishes",
    137 : "Edit Dishes",
    138 : "Add new Dishes",
    139 : "Enter Dishes Name",
    140 : "Price",
    141 : "Enter Dishes price",
    142 : "Discount Price",
    143 : "Enter Discount Price",
    144 : "Ingredients",
    145 : "Enter Ingredients",
    146 : "Choose Dishes Category",
    147 : "All",
    148 : "Mobile Phone",
    149 : "Menu",
    150 : "Dishes",
    151 : "Reviews",
    152 : "Ingredients",
    153 : "Information",
  };

  //
  //
  //
  setLang(int id){
    if (id == english) {
      defaultLang = langEng;
      init = true;
    }
    if (id == german) {
      defaultLang = langDeu;
      init = true;
    }
    if (id == espanol) {
      defaultLang = langEsp;
      init = true;
    }
    if (id == french) {
      defaultLang = langFrench;
      init = true;
    }
    if (id == korean) {
      defaultLang = langKorean;
      init = true;
    }
    for (var lang in langData) {
      lang.current = false;
      if (lang.id == id)
        lang.current = true;
    }
  }

  Map<int, String> defaultLang;
  var init = false;

  String get(int id){
    if (!init) return "";
    return defaultLang[id];
  }

}

