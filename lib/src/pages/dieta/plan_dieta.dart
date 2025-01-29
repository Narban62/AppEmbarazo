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
    title: 'Desayuno: Avena con leche y frutas',
    ingredients: [
      '1/2 taza de avena',
      '1 taza de leche (puede ser de almendras o soja)',
      '1/2 plátano en rodajas',
      '1 cucharada de nueces',
      '1 cucharadita de miel',
    ],
    preparation: 'Cocina la avena en leche hasta que espese. Sirvete con plátano, nueces y miel.',
  ),
  Meal(
    title: 'Almuerzo: Ensalada de pollo con quinua',
    ingredients: [
      '1 pechuga de pollo a la parrilla (120 g)',
      '1/2 taza de quinoa cocida',
      '1 taza de espinacas frescas',
      '1/2 tomate picado',
      '1/4 de aguacate',
      'Aderezo de aceite de oliva y limón',
    ],
    preparation: 'Cocina el pollo y acompáñalo con quinua y una ensalada fresca de espinacas, tomate, aguacate y aderezo.',
  ),
  Meal(
    title: 'Merienda: Yogur con frutas y almendras',
    ingredients: [
      '1 taza de yogur natural',
      '1/4 taza de frutos rojos (fresas, arándanos)',
      '1 cucharada de almendras',
    ],
    preparation: 'Mezcla el yogur con las frutas y las almendras.',
  ),
];

final List<Meal> _tuesdayMeals = [
  Meal(
    title: 'Desayuno: Chia, espinacas y frutas',
    ingredients: [
      '1 taza de espinacas frescas',
      '1/2 plátano',
      '1/2 taza de fresas',
      '1/2 taza de leche',
      '1 cucharadita de semillas de chía',
    ],
    preparation: 'Licúa todos los ingredientes hasta obtener un batido suave.',
  ),
  Meal(
    title: 'Almuerzo: Tacos de pescado con verduras',
    ingredients: [
      '1 filete de pescado (tilapia o merluza)',
      '2 tortillas de maíz',
      '1/2 taza de col rallado',
      '1/4 de cebolla morada',
      'Salsa de yogur con limón',
    ],
    preparation: 'Cocina el pescado y sirve en tortillas con col y cebolla. Agrega la salsa de yogur.',
  ),
  Meal(
    title: 'Merienda: Rodajas de pepino con hummus',
    ingredients: [
      '1 pepino en rodajas',
      '3 cucharadas de hummus',
    ],
    preparation: 'Sirve las rodajas de pepino con hummus.',
  ),
];

final List<Meal> _wednesdayMeals = [
  Meal(
    title: 'Desayuno: Pan integral con aguacate y huevo',
    ingredients: [
      '1 rebanada de pan integral',
      '1/2 aguacate',
      '1 huevo revuelto',
    ],
    preparation: 'Tuesta el pan, unta el aguacate y cubre con el huevo revuelto.',
  ),
  Meal(
    title: 'Almuerzo: Sopa de lentejas con espinacas',
    ingredients: [
      '1 taza de lentejas cocidas',
      '1/2 taza de espinacas frescas',
      '1 zanahoria picada',
      '1 diente de ajo picado',
      '1 cucharada de aceite de oliva',
    ],
    preparation: 'Cocina las lentejas con las zanahorias y el ajo. Agregue las espinacas y cocine por unos minutos más.',
  ),
  Meal(
    title: 'Merienda: Manzana con mantequilla de almendras',
    ingredients: [
      '1 manzana en rodajas',
      '1 cucharada de mantequilla de almendras',
    ],
    preparation: 'Sirve las rodajas de manzana con la mantequilla de almendras.',
  ),
];

final List<Meal> _thursdayMeals = [
  Meal(
    title: 'Desayuno: Panqueques de avena y plátano',
    ingredients: [
      '1 plátano maduro',
      '1/2 taza de avena molida',
      '1 huevo',
      '1/4 taza de leche',
    ],
    preparation: 'Tritura el plátano y mezcla con la avena, el huevo y la leche. Cocina en una sartén con un poco de aceite de coco.',
  ),
  Meal(
    title: 'Almuerzo: Ensalada de atún con garbanzos',
    ingredients: [
      '1 lata de atún en agua',
      '1/2 taza de garbanzos cocidos',
      '1/4 de cebolla morada',
      '1 tomate picado',
      '1 cucharada de aceite de oliva',
    ],
    preparation: 'Mezcla todos los ingredientes en un vasija, aliña con aceite de oliva.',
  ),
  Meal(
    title: 'Merienda: Empanaditas de plátano maduro con queso fresco',
    ingredients: [
      '2 plátanos',
      '1/2 taza de queso fresco rallado o desmenuzado',
      '1/4 taza de harina de avena',
      'Una pizca de sal',
      'Aceite vegetal',
    ],
    preparation: 'Cocina los plátanos pelados en agua con una pizca de sal hasta que estén blandos, luego tritúralos para hacer un puré y mezcla con la harina de avena hasta formar una masa manejable. Toma porciones, aplánalas, rellena con queso fresco y sella los bordes para formar las empanaditas. Fríelas en aceite caliente hasta dorarlas o hornéalas.',
  ),
];

final List<Meal> _fridayMeals = [
  Meal(
    title: 'Desayuno: Tostadas de aguacate con tomate',
    ingredients: [
      '1 rebanada de pan integral',
      '1/2 aguacate',
      '1 tomate en rodajas',
      '1 cucharadita de aceite de oliva',
    ],
    preparation: 'Tuesta el pan, unta el aguacate y coloca las rodajas de tomate con un poco de aceite de oliva.',
  ),
  Meal(
    title: 'Almuerzo: Arroz con pollo y brócoli',
    ingredients: [
      '1 taza de arroz cocido',
      '1 pechuga de pollo a la pancha',
      '1/2 taza de brócoli al vapor',
    ],
    preparation: 'Cocina el pollo y acompáñalo con arroz y brócoli.',
  ),
  Meal(
    title: 'Merienda: Frutos secos y un plátano',
    ingredients: [
      '1 puñado de almendras',
      '1 plátano',
    ],
    preparation: '',
  ),
];

final List<Meal> _saturdayMeals = [
  Meal(
    title: 'Desayuno: Yogur con granola y mango',
    ingredients: [
      '1 taza de yogur',
      '1/2 taza de granola',
      '1/2 mango en cubos',
    ],
    preparation: 'Sirve el yogur con la granola y mango por encima.',
  ),
  Meal(
    title: 'Almuerzo: Burrito de pollo y frijoles',
    ingredients: [
      '1 tortilla integral',
      '1 pechuga de pollo',
      '1/4 taza de frijoles negros',
      '1/4 de cebolla y 1 tomate',
      'Salsa de yogur',
    ],
    preparation: 'Cocina el pollo, mezcla con los frijoles y las verduras. Sirve en una tortilla con salsa de yogur.',
  ),
  Meal(
    title: 'Merienda: Rodajas de zanahoria con guacamole',
    ingredients: [
      '1 zanahoria',
      '1/4 de aguacate',
      '1 cucharadita de limón',
    ],
    preparation: 'Sirve las rodajas de zanahoria con guacamole.',
  ),
];

final List<Meal> _sundayMeals = [
  Meal(
    title: 'Desayuno: Huevos revueltos con espinacas',
    ingredients: [
      '2 huevos',
      '1 taza de espinacas',
      '1 cucharadita de aceite de oliva',
    ],
    preparation: 'Revuelve los huevos con las espinacas en una sartén.',
  ),
  Meal(
    title: 'Almuerzo: Ensalada de garbanzos con aguacate',
    ingredients: [
      '1 taza de garbanzos cocidos',
      '1/2 aguacate',
      '1/4 de cebolla',
      '1 cucharada de aceite de oliva',
    ],
    preparation: 'Mezcla los garbanzos con el aguacate, cebolla y aceite de oliva.',
  ),
  Meal(
    title: 'Merienda: Fruta de temporada con queso fresco',
    ingredients: [
      '1 taza de frutas (fresas, melón, uvas)',
      '1/2 taza de queso fresco',
    ],
    preparation: '',
  ),
];