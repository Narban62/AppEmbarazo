import 'package:flutter/material.dart';

class MealPlanScreen extends StatefulWidget {
  const MealPlanScreen({super.key});

  @override
  State<MealPlanScreen> createState() => _DietaPageState();
}

class _DietaPageState extends State<MealPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          _buildDayTile(context, 'Lunes', _mondayMeals),
          _buildDayTile(context, 'Martes', _tuesdayMeals),
          _buildDayTile(context, 'Miércoles', _wednesdayMeals),
          _buildDayTile(context, 'Jueves', _thursdayMeals),
          _buildDayTile(context, 'Viernes', _fridayMeals),
          _buildDayTile(context, 'Sábado', _saturdayMeals),
          _buildDayTile(context, 'Domingo', _sundayMeals),
        ],
      ),
    );
  }

  Widget _buildDayTile(BuildContext context, String day, List<Meal> meals) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ExpansionTile(
        title: Text(
          day,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        children: meals.map((meal) => _buildMealTile(context, meal)).toList(),
      ),
    );
  }

  Widget _buildMealTile(BuildContext context, Meal meal) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            meal.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.teal[700],
            ),
          ),
          SizedBox(height: 8),
          ...meal.ingredients.map((ingredient) => Text('• $ingredient')).toList(),
          SizedBox(height: 8),
          Text(
            'Preparación: ${meal.preparation}',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[700],
            ),
          ),

          Divider(color: Colors.teal),
        ],
      ),
    );
  }
}

class Meal {
  final String title;
  final List<String> ingredients;
  final String preparation;

  Meal({required this.title, required this.ingredients, required this.preparation});
}

final List<Meal> _mondayMeals = [
  Meal(
    title: 'Desayuno: Batido de frutas',
    ingredients: [
      '1 banano',
      '1 taza de papaya picada',
      '1 taza de leche',
      '1 tostada de pan integral',
      '1 rebanada de queso fresco',
    ],
    preparation: 'Licúa el banano, la papaya y la leche hasta obtener una mezcla homogénea. Sirve con la tostada de pan integral y el queso fresco.',
  ),
  Meal(
    title: 'Almuerzo: Locro de papa',
    ingredients: [
      '4 papas',
      '1 cebolla',
      '2 dientes de ajo',
      '1 taza de leche',
      '1 taza de queso fresco',
      '1 aguacate',
      '2 tomates',
      'sal y pimienta al gusto',
    ],
    preparation: 'Cocina las papas peladas y cortadas en cubos en agua con sal. Sofríe la cebolla y el ajo picados, añade las papas cocidas y la leche. Cocina a fuego lento hasta que espese. Agrega el queso fresco desmenuzado. Sirve con ensalada de aguacate y tomate.\n Bebida: Un vaso de jugo de naranja. ',
  ),
  Meal(
    title: 'Merienda: Yogur con granola y frutas',
    ingredients: [
      '1 taza de yogur natural',
      '1/2 taza de granola',
      '1/2 taza de frutas frescas (mango o piña)',
    ],
    preparation: 'Mezcla el yogur con la granola y las frutas picadas. Sirve frío.',
  ),
];


final List<Meal> _tuesdayMeals = [
  Meal(
    title: 'Desayuno: Avena con leche y miel',
    ingredients: [
      '1 taza de avena',
      '2 tazas de leche',
      '1 cucharada de miel',
      '1 plátano',
    ],
    preparation: 'Cocina la avena en la leche hasta que espese. Añade la miel y las rodajas de plátano. Sirve caliente.',
  ),
  Meal(
    title: 'Almuerzo: Seco de pollo',
    ingredients: [
      '4 muslos de pollo',
      '1 cebolla',
      '2 tomates',
      '1 pimiento',
      '2 dientes de ajo',
      '1 taza de caldo de pollo',
      '1 taza de arroz',
      '1 taza de lentejas cocidas',
      'sal y especias al gusto',
    ],
    preparation: 'Sofríe la cebolla, el ajo, el pimiento y los tomates picados. Añade el pollo y cocina hasta dorar. Agrega el caldo y cocina a fuego lento hasta que el pollo esté tierno. Sirve con arroz y menestra de lentejas. \n Bebida: Un vaso de jugo de maracuyá. ',
  ),
  Meal(
    title: 'Merienda: Empanada de viento',
    ingredients: [
      '1 taza de harina de trigo',
      '1/2 taza de agua',
      '1 taza de queso rallado',
      'aceite para freír',
      '1 taza de jugo de mora',
    ],
    preparation: 'Mezcla la harina con el agua hasta formar una masa. Rellena con queso rallado y forma empanadas. Fríe en aceite caliente hasta dorar. Sirve con jugo de mora.',
  ),
];


final List<Meal> _wednesdayMeals = [
  Meal(
    title: 'Desayuno: Huevos revueltos con tomate y cebolla',
    ingredients: [
      '2 huevos',
      '1 tomate',
      '1/2 cebolla',
      'sal y pimienta al gusto',
      '1 arepa de maíz',
    ],
    preparation: 'Sofríe la cebolla y el tomate picados. Añade los huevos batidos y cocina hasta que estén listos. Sirve con la arepa de maíz y un vaso de jugo de naranja.',
  ),
  Meal(
    title: 'Almuerzo: Encebollado',
    ingredients: [
      '500 g de pescado (albacora o corvina)',
      '2 yucas',
      '2 cebollas',
      '1 tomate',
      '1 pimiento',
      '1 limón',
      'cilantro, sal y especias al gusto',
      'chifles',
    ],
    preparation: 'Cocina el pescado y la yuca en agua con sal. Sofríe la cebolla, el tomate y el pimiento picados. Añade el pescado y la yuca cocidos. Sirve con jugo de limón, cilantro picado y chifles. \n Bebida: Un vaso de limonada.',
  ),
  Meal(
    title: 'Merienda: Batido de mora con leche',
    ingredients: [
      '1 taza de moras',
      '1 taza de leche',
      '1/4 taza de frutos secos',
    ],
    preparation: 'Licúa las moras con la leche. Sirve con una porción de frutos secos. Sirve con un vaso de leche.',
  ),
];


final List<Meal> _thursdayMeals = [
  Meal(
    title: 'Desayuno: Pan de yuca',
    ingredients: [
      '2 tazas de almidón de yuca',
      '1 taza de queso rallado',
      '1 huevo',
      '1/2 taza de leche',
      '1 taza de leche',
    ],
    preparation: 'Mezcla el almidón de yuca, el queso, el huevo y la leche hasta formar una masa. Forma bolitas y hornea a 180°C hasta dorar. Sirve con un vaso de leche.',
  ),
  Meal(
    title: 'Almuerzo: Fritada con llapingachos',
    ingredients: [
      '500 g de cerdo',
      '4 papas',
      '1 taza de queso rallado',
      '1 cebolla',
      '2 tomates',
      '1 pimiento',
      'lechuga, sal y especias al gusto',
    ],
    preparation: 'Cocina el cerdo en agua con sal y especias hasta que esté bien cocido. Fríe hasta dorar. Cocina las papas, haz puré y mezcla con el queso. Forma tortillas y fríe. Sirve con ensalada de lechuga, pimiento y tomate. \n Bebida: Un vaso de jugo de tamarindo.',
  ),
  Meal(
    title: 'Merienda: Fruta fresca con nueces',
    ingredients: [
      '1 taza de piña o sandía picada',
      '1/4 taza de nueces',
    ],
    preparation: 'Sirve la fruta fresca con un puñado de nueces.',
  ),
];

final List<Meal> _fridayMeals = [
  Meal(
    title: 'Desayuno: Tigrillo',
    ingredients: [
      '2 plátanos verdes',
      '2 huevos',
      '1/2 taza de queso rallado',
      '1 taza de jugo de naranja',
    ],
    preparation: 'Cocina los plátanos y haz un puré. Añade los huevos batidos y el queso. Cocina hasta que los huevos estén listos. Sirve con jugo de naranja.',
  ),
  Meal(
    title: 'Almuerzo: Ceviche de camarón',
    ingredients: [
      'Media libra de camarones',
      '2 tomates',
      '1 cebolla',
      '1 pimiento',
      '1 limón',
      'cilantro, sal y especias al gusto',
      'tostado, arroz',
    ],
    preparation: 'Cocina los camarones en agua con sal. Mezcla con tomate, cebolla y pimiento picados. Añade jugo de limón y cilantro. Sirve con tostado y arroz. \n Bebida: Un vaso de agua de coco.',
  ),
  Meal(
    title: 'Merienda: Yogur con miel y banano',
    ingredients: [
      '1 taza de yogur natural',
      '1 cucharada de miel',
      '1 banano',
    ],
    preparation: 'Mezcla el yogur con la miel y las rodajas de banano. Sirve frío.',
  ),
];


final List<Meal> _saturdayMeals = [
  Meal(
    title: 'Desayuno: Bolón de verde',
    ingredients: [
      '2 plátanos verdes',
      '1 taza de queso rallado',
      '1 taza de leche',
    ],
    preparation: 'Cocina los plátanos y haz un puré. Mezcla con el queso y forma bolitas. Sirve con leche.',
  ),
  Meal(
    title: 'Almuerzo: Sopa de quinoa con vegetales y pollo',
    ingredients: [
      '1 taza de quinoa',
      '1 pechuga de pollo',
      '2 zanahorias',
      '1 cebolla',
      '1 pimiento',
      '1 aguacate',
      'sal y especias al gusto',
    ],
    preparation: 'Cocina la quinoa en agua con sal. Sofríe la cebolla, el pimiento y las zanahorias picadas. Añade el pollo y cocina hasta dorar. Mezcla con la quinoa y cocina a fuego lento. Sirve con ensalada de aguacate. \n Bebida: Un vaso de jugo de piña.',
  ),
  Meal(
    title: 'Merienda: Batido de mango con leche',
    ingredients: [
      '1 mango',
      '1 taza de leche',
      '1 porción de galletas integrales',
    ],
    preparation: 'Licúa el mango con la leche. Sirve con galletas integrales.',
  ),
];


final List<Meal> _sundayMeals = [
  Meal(
    title: 'Desayuno: Tortilla de huevo con espinacas y queso',
    ingredients: [
      '2 huevos',
      '1 taza de espinacas',
      '1/2 taza de queso rallado',
      '1 tostada de pan integral',
    ],
    preparation: 'Bate los huevos y mezcla con las espinacas picadas y el queso. Cocina en una sartén hasta que esté listo. Sirve con la tostada de pan integral y un vaso de naranja.',
  ),
  Meal(
    title: 'Almuerzo: Cuy asado',
    ingredients: [
      '1 cuy',
      '4 papas',
      '1 taza de salsa de maní',
      'sal y especias al gusto',
    ],
    preparation: 'Asa el cuy en el horno hasta que esté dorado. Cocina las papas en agua con sal. Sirve el cuy con las papas y la salsa de maní y un vaso de piña. \n Bebida: Un vaso de jugo de piña.',
  ),
  Meal(
    title: 'Merienda: Fruta fresca con almendras',
    ingredients: [
      '1 taza de mango o papaya picada',
      '1/4 taza de almendras',
    ],
    preparation: 'Sirve la fruta fresca picada en un plato y acompaña con un puñado de almendras.',
  ),
];
