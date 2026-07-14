\connect food_ai_db;

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'background',
    'arrière-plan',
    'non alimentaire',
    0,
    0,
    0,
    0,
    'Cette classe représente l’arrière-plan de l’image et doit être ignorée dans l’analyse nutritionnelle.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'candy',
    'bonbons',
    'sucrerie',
    394,
    0,
    98,
    0,
    'Très riche en sucre rapide. À limiter et à accompagner d’aliments plus nutritifs si possible.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'egg tart',
    'tartelette aux œufs',
    'dessert',
    300,
    6,
    35,
    15,
    'Dessert énergétique. Une petite portion est préférable, surtout si le repas contient déjà beaucoup de glucides.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'french fries',
    'frites',
    'féculent frit',
    312,
    3.4,
    41,
    15,
    'Riche en gras et souvent en sel. À équilibrer avec des légumes et une source de protéines maigres.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'chocolate',
    'chocolat',
    'sucrerie',
    546,
    4.9,
    61,
    31,
    'Aliment dense en énergie. Le chocolat noir en petite quantité est généralement un meilleur choix.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'biscuit',
    'biscuit',
    'dessert',
    480,
    6,
    70,
    20,
    'Souvent riche en sucre et en gras. À réserver comme collation occasionnelle.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'popcorn',
    'maïs soufflé',
    'collation',
    375,
    11,
    74,
    4,
    'Peut être une bonne collation si elle est préparée avec peu de beurre, de sucre et de sel.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'pudding',
    'pouding',
    'dessert',
    130,
    3,
    22,
    4,
    'Dessert sucré. Une portion modérée permet de mieux contrôler l’apport en sucre.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'ice cream',
    'crème glacée',
    'dessert laitier',
    207,
    3.5,
    24,
    11,
    'Riche en sucre et en matières grasses. À consommer en petite portion.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'cheese butter',
    'fromage ou beurre',
    'produit laitier gras',
    402,
    18,
    2,
    36,
    'Source de gras et parfois de protéines. La quantité est importante, surtout avec le beurre.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'cake',
    'gâteau',
    'dessert',
    350,
    5,
    55,
    14,
    'Riche en sucre. À consommer occasionnellement, idéalement après un repas équilibré.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'wine',
    'vin',
    'boisson alcoolisée',
    85,
    0,
    2.6,
    0,
    'Boisson alcoolisée. À consommer avec prudence et modération.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'milkshake',
    'lait frappé',
    'boisson sucrée',
    112,
    3.9,
    18,
    3,
    'Boisson souvent riche en sucre. Peut rapidement augmenter les calories du repas.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'coffee',
    'café',
    'boisson',
    2,
    0.1,
    0,
    0,
    'Faible en calories sans sucre ni crème. Attention aux ajouts sucrés.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'juice',
    'jus',
    'boisson sucrée',
    45,
    0.5,
    11,
    0.1,
    'Contient du sucre naturel, mais peu de fibres. Le fruit entier est souvent préférable.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'milk',
    'lait',
    'produit laitier',
    61,
    3.2,
    4.8,
    3.3,
    'Source de protéines et de calcium. Choisir la teneur en gras selon ses besoins.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'tea',
    'thé',
    'boisson',
    1,
    0,
    0,
    0,
    'Très faible en calories sans sucre. Bonne option d’hydratation.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'almond',
    'amandes',
    'noix et graines',
    579,
    21,
    22,
    50,
    'Riches en bons gras et protéines. Une petite poignée suffit.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'red beans',
    'haricots rouges',
    'légumineuse',
    127,
    8.7,
    22.8,
    0.5,
    'Bonne source de fibres et de protéines végétales. Excellent pour un repas rassasiant.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'cashew',
    'noix de cajou',
    'noix et graines',
    553,
    18,
    30,
    44,
    'Énergétiques et riches en gras. À consommer en petite quantité.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'dried cranberries',
    'canneberges séchées',
    'fruit séché',
    308,
    0.1,
    83,
    1.1,
    'Fruit séché souvent sucré. À utiliser en petite quantité dans une salade ou un yogourt.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'soy',
    'soya',
    'légumineuse',
    173,
    16.6,
    9.9,
    9,
    'Bonne source de protéines végétales. Intéressant dans un repas sans viande.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'walnut',
    'noix de Grenoble',
    'noix et graines',
    654,
    15,
    14,
    65,
    'Riche en bons gras. Très nutritif, mais à consommer en petite portion.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'peanut',
    'arachides',
    'noix et graines',
    567,
    26,
    16,
    49,
    'Bonne source de protéines et de gras. Attention aux versions très salées.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'egg',
    'œuf',
    'protéine',
    155,
    13,
    1.1,
    11,
    'Bonne source de protéines complètes. Très utile pour rendre un repas plus rassasiant.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'apple',
    'pomme',
    'fruit',
    52,
    0.3,
    14,
    0.2,
    'Fruit riche en fibres. Bon choix comme collation.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'date',
    'datte',
    'fruit séché',
    282,
    2.5,
    75,
    0.4,
    'Très sucrée naturellement. Bonne source d’énergie rapide, mais en petite quantité.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'apricot',
    'abricot',
    'fruit',
    48,
    1.4,
    11,
    0.4,
    'Fruit léger et intéressant pour varier les sources de vitamines.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'avocado',
    'avocat',
    'fruit gras',
    160,
    2,
    9,
    15,
    'Riche en bons gras. Excellent, mais la portion doit rester raisonnable.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'banana',
    'banane',
    'fruit',
    89,
    1.1,
    23,
    0.3,
    'Bonne source d’énergie et de potassium. Pratique avant une activité physique.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'strawberry',
    'fraise',
    'fruit',
    32,
    0.7,
    7.7,
    0.3,
    'Fruit léger et riche en vitamine C. Très bon choix pour un dessert frais.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'cherry',
    'cerise',
    'fruit',
    63,
    1.1,
    16,
    0.2,
    'Fruit naturellement sucré. À intégrer en portion modérée.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'blueberry',
    'bleuet',
    'fruit',
    57,
    0.7,
    14.5,
    0.3,
    'Riche en antioxydants. Très bon ajout à un déjeuner ou une collation.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'raspberry',
    'framboise',
    'fruit',
    52,
    1.2,
    12,
    0.7,
    'Bonne source de fibres. Excellent choix pour un dessert léger.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'mango',
    'mangue',
    'fruit',
    60,
    0.8,
    15,
    0.4,
    'Fruit sucré et vitaminé. À combiner avec une source de protéines pour une collation complète.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'olives',
    'olives',
    'fruit gras',
    115,
    0.8,
    6,
    11,
    'Riches en gras et souvent salées. À utiliser en petite quantité.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'peach',
    'pêche',
    'fruit',
    39,
    0.9,
    10,
    0.3,
    'Fruit léger et hydratant. Bon choix pour une collation.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'lemon',
    'citron',
    'fruit',
    29,
    1.1,
    9,
    0.3,
    'Ajoute du goût avec peu de calories. Intéressant pour remplacer certaines sauces grasses.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'pear',
    'poire',
    'fruit',
    57,
    0.4,
    15,
    0.1,
    'Bonne source de fibres. Aide à rendre une collation plus rassasiante.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'fig',
    'figue',
    'fruit',
    74,
    0.8,
    19,
    0.3,
    'Fruit naturellement sucré. À intégrer en portion modérée.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'pineapple',
    'ananas',
    'fruit',
    50,
    0.5,
    13,
    0.1,
    'Fruit frais et hydratant. Bon choix pour ajouter de la variété.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'grape',
    'raisin',
    'fruit',
    69,
    0.7,
    18,
    0.2,
    'Fruit sucré. Une portion contrôlée est recommandée.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'kiwi',
    'kiwi',
    'fruit',
    61,
    1.1,
    15,
    0.5,
    'Riche en vitamine C. Très bon ajout à un repas léger.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'melon',
    'melon',
    'fruit',
    34,
    0.8,
    8,
    0.2,
    'Très hydratant et léger. Bon choix en dessert.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'orange',
    'orange',
    'fruit',
    47,
    0.9,
    12,
    0.1,
    'Source de vitamine C et de fibres. Préférer l’orange entière au jus.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'watermelon',
    'melon d’eau',
    'fruit',
    30,
    0.6,
    8,
    0.2,
    'Très hydratant et faible en calories. Bon choix lors des repas légers.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'steak',
    'steak',
    'protéine animale',
    271,
    25,
    0,
    19,
    'Bonne source de protéines. Choisir une coupe plus maigre si le repas est déjà riche en gras.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'pork',
    'porc',
    'protéine animale',
    242,
    27,
    0,
    14,
    'Source de protéines. Les coupes maigres sont préférables pour réduire les gras saturés.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'chicken duck',
    'poulet ou canard',
    'protéine animale',
    190,
    25,
    0,
    9,
    'Bonne source de protéines. Le poulet sans peau est généralement plus maigre que le canard.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'sausage',
    'saucisse',
    'charcuterie',
    301,
    12,
    2,
    27,
    'Souvent riche en gras et en sel. À limiter ou à accompagner de légumes.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'fried meat',
    'viande frite',
    'protéine frite',
    290,
    22,
    8,
    19,
    'La friture augmente les calories et les lipides. À équilibrer avec des aliments non frits.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'lamb',
    'agneau',
    'protéine animale',
    294,
    25,
    0,
    21,
    'Bonne source de protéines, mais souvent plus gras. Une portion modérée est recommandée.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'sauce',
    'sauce',
    'accompagnement',
    120,
    2,
    10,
    8,
    'Les sauces peuvent ajouter beaucoup de sel, sucre ou gras. Utiliser en petite quantité.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'crab',
    'crabe',
    'fruit de mer',
    97,
    19,
    0,
    1.5,
    'Bonne source de protéines maigres. Attention aux sauces d’accompagnement.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'fish',
    'poisson',
    'protéine animale',
    206,
    22,
    0,
    12,
    'Bonne source de protéines. Les poissons gras apportent aussi des oméga-3.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'shellfish',
    'fruits de mer',
    'fruit de mer',
    86,
    17,
    3,
    1,
    'Bonne source de protéines maigres. À surveiller si le plat contient beaucoup de sauce ou de sel.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'shrimp',
    'crevettes',
    'fruit de mer',
    99,
    24,
    0.2,
    0.3,
    'Très riche en protéines et faible en gras. Bon choix pour un repas léger.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'soup',
    'soupe',
    'plat liquide',
    50,
    3,
    7,
    1.5,
    'Peut être légère et hydratante. Attention aux soupes très salées ou crémeuses.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'bread',
    'pain',
    'féculent',
    265,
    9,
    49,
    3.2,
    'Source de glucides. Les pains de grains entiers sont souvent plus rassasiants.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'corn',
    'maïs',
    'féculent',
    96,
    3.4,
    21,
    1.5,
    'Source de glucides et de fibres. Bon complément dans une assiette équilibrée.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'hamburg',
    'hamburger',
    'plat préparé',
    295,
    17,
    30,
    13,
    'Repas souvent riche en calories. Ajouter des légumes et limiter les sauces améliore l’équilibre.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'pizza',
    'pizza',
    'plat préparé',
    266,
    11,
    33,
    10,
    'Plat énergétique. L’équilibre est meilleur avec une salade ou des légumes à côté.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'hanamaki baozi',
    'pain vapeur farci',
    'plat à base de pâte',
    230,
    7,
    36,
    6,
    'Source de glucides. La qualité dépend beaucoup de la farce utilisée.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'wonton dumplings',
    'raviolis wonton',
    'plat à base de pâte',
    230,
    9,
    30,
    8,
    'Peut être équilibré si accompagné de légumes et servi en portion raisonnable.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'pasta',
    'pâtes',
    'féculent',
    158,
    5.8,
    31,
    1,
    'Bonne source d’énergie. Ajouter des légumes et des protéines améliore le repas.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'noodles',
    'nouilles',
    'féculent',
    138,
    4.5,
    25,
    2,
    'Source de glucides. Attention aux sauces très salées dans les plats de nouilles.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'rice',
    'riz',
    'féculent',
    130,
    2.7,
    28,
    0.3,
    'Bonne source d’énergie. Le riz complet apporte plus de fibres.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'pie',
    'tarte',
    'plat ou dessert',
    260,
    4,
    32,
    13,
    'Peut être salée ou sucrée. Souvent riche en pâte et en gras, donc portion modérée.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'tofu',
    'tofu',
    'protéine végétale',
    76,
    8,
    1.9,
    4.8,
    'Bonne source de protéines végétales. Très utile pour équilibrer un repas sans viande.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'eggplant',
    'aubergine',
    'légume',
    25,
    1,
    6,
    0.2,
    'Légume faible en calories. Attention aux préparations très huileuses.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'potato',
    'pomme de terre',
    'féculent',
    77,
    2,
    17,
    0.1,
    'Bonne source de glucides. La cuisson au four ou à l’eau est plus légère que la friture.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'garlic',
    'ail',
    'aromate',
    149,
    6.4,
    33,
    0.5,
    'Ajoute beaucoup de goût avec une petite quantité. Intéressant pour réduire le besoin de sauces.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'cauliflower',
    'chou-fleur',
    'légume',
    25,
    1.9,
    5,
    0.3,
    'Légume léger et polyvalent. Bon choix pour augmenter le volume du repas.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'tomato',
    'tomate',
    'légume',
    18,
    0.9,
    3.9,
    0.2,
    'Faible en calories et riche en eau. Très bon ajout pour équilibrer l’assiette.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'kelp',
    'varech',
    'algue',
    43,
    1.7,
    9.6,
    0.6,
    'Algue légère et riche en minéraux. Attention au sel selon la préparation.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'seaweed',
    'algue',
    'algue',
    45,
    5.8,
    9,
    0.3,
    'Bonne source de minéraux. À surveiller si elle est très salée.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'spring onion',
    'oignon vert',
    'légume aromatique',
    32,
    1.8,
    7.3,
    0.2,
    'Ajoute du goût avec peu de calories. Bon choix pour réduire les sauces.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'rape',
    'feuilles de colza',
    'légume vert',
    22,
    2.2,
    3.7,
    0.3,
    'Légume vert léger. Bon ajout pour augmenter les fibres du repas.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'ginger',
    'gingembre',
    'aromate',
    80,
    1.8,
    18,
    0.8,
    'Utilisé en petite quantité pour le goût. Peut aider à réduire les sauces plus grasses.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'okra',
    'gombo',
    'légume',
    33,
    1.9,
    7,
    0.2,
    'Légume riche en fibres. Très bon pour améliorer la satiété du repas.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'lettuce',
    'laitue',
    'légume',
    15,
    1.4,
    2.9,
    0.2,
    'Très faible en calories. Bon ajout pour augmenter le volume de l’assiette.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'pumpkin',
    'citrouille',
    'légume',
    26,
    1,
    6.5,
    0.1,
    'Légume doux et peu calorique. Bon choix dans une soupe ou un plat chaud.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'cucumber',
    'concombre',
    'légume',
    15,
    0.7,
    3.6,
    0.1,
    'Très hydratant et faible en calories. Excellent pour alléger un repas.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'white radish',
    'radis blanc',
    'légume',
    18,
    0.6,
    4.1,
    0.1,
    'Légume léger et croquant. Bon pour ajouter du volume sans beaucoup de calories.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'carrot',
    'carotte',
    'légume',
    41,
    0.9,
    10,
    0.2,
    'Bonne source de fibres et de bêta-carotène. Très bon ajout à une assiette.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'asparagus',
    'asperge',
    'légume',
    20,
    2.2,
    3.9,
    0.1,
    'Légume léger, riche en fibres. Bon choix pour équilibrer un plat plus riche.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'bamboo shoots',
    'pousses de bambou',
    'légume',
    27,
    2.6,
    5.2,
    0.3,
    'Faibles en calories et croquantes. Bon ajout dans les plats sautés.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'broccoli',
    'brocoli',
    'légume',
    35,
    2.8,
    7,
    0.4,
    'Très bon légume pour ajouter fibres, vitamines et volume au repas.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'celery stick',
    'céleri',
    'légume',
    16,
    0.7,
    3,
    0.2,
    'Très faible en calories. Bon choix comme collation ou ajout croquant.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'cilantro mint',
    'coriandre ou menthe',
    'herbe aromatique',
    30,
    2.5,
    5,
    0.6,
    'Ajoute beaucoup de fraîcheur avec très peu de calories.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'snow peas',
    'pois mange-tout',
    'légume',
    42,
    2.8,
    7.5,
    0.2,
    'Bon légume croquant, source de fibres et légèrement protéiné.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'cabbage',
    'chou',
    'légume',
    25,
    1.3,
    6,
    0.1,
    'Faible en calories et riche en fibres. Bon choix pour une assiette plus complète.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'bean sprouts',
    'pousses de haricot',
    'légume',
    30,
    3,
    6,
    0.2,
    'Léger et croquant. Bon ajout pour augmenter le volume d’un plat.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'onion',
    'oignon',
    'légume aromatique',
    40,
    1.1,
    9,
    0.1,
    'Ajoute du goût avec peu de calories. Utile pour réduire les sauces plus riches.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'pepper',
    'poivron',
    'légume',
    31,
    1,
    6,
    0.3,
    'Riche en couleur et en vitamine C. Très bon pour équilibrer l’assiette.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'green beans',
    'haricots verts',
    'légume',
    31,
    1.8,
    7,
    0.1,
    'Légume léger et riche en fibres. Bon accompagnement pour les protéines.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'French beans',
    'haricots verts fins',
    'légume',
    31,
    1.8,
    7,
    0.1,
    'Bon choix d’accompagnement léger. Aide à équilibrer un plat riche.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'king oyster mushroom',
    'pleurote du panicaut',
    'champignon',
    35,
    3,
    6,
    0.4,
    'Champignon léger et savoureux. Peut remplacer une partie des ingrédients plus gras.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'shiitake',
    'shiitake',
    'champignon',
    34,
    2.2,
    6.8,
    0.5,
    'Ajoute beaucoup de goût avec peu de calories. Bon choix dans les plats sautés.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'enoki mushroom',
    'champignon enoki',
    'champignon',
    37,
    2.7,
    7.8,
    0.3,
    'Léger et riche en texture. Intéressant pour ajouter du volume au repas.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'oyster mushroom',
    'pleurote',
    'champignon',
    33,
    3.3,
    6.1,
    0.4,
    'Champignon nutritif et léger. Bon ajout pour diversifier les légumes.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'white button mushroom',
    'champignon de Paris',
    'champignon',
    22,
    3.1,
    3.3,
    0.3,
    'Très faible en calories. Bon choix pour ajouter du volume et de la saveur.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'salad',
    'salade',
    'plat léger',
    33,
    2,
    6,
    0.4,
    'Très bon choix pour augmenter les légumes. Attention à la quantité de vinaigrette.'
);

INSERT INTO foods
(
    class_name,
    nom_fr,
    groupe,
    calories_100g,
    proteines_100g,
    glucides_100g,
    lipides_100g,
    conseil
)
VALUES
(
    'other ingredients',
    'autres ingrédients',
    'divers',
    100,
    3,
    12,
    4,
    'Classe générale. L’analyse nutritionnelle doit rester prudente pour cet élément.'
);

