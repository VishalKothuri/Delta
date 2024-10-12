import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DELTA ASSISTANT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green), // Earthy color palette
        useMaterial3: true,
        fontFamily: 'Roboto', // Use a modern font
      ),
      home: const MyHomePage(title: 'DELTA ASSISTANT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.brown[600], // Earthy brown color for the app bar
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 24, // Larger font size for title
            fontWeight: FontWeight.bold, // Bold title
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              "assets/deltalogo.png", // Delta logo on the right
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/deltabg.png'), // Background image
            fit: BoxFit.cover, // Cover the entire background
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Space for a graph in the middle
            Expanded(
              flex: 3, // Increase flex to make the graph box larger
              child: Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                decoration: BoxDecoration(
                  color: Colors.green[50]?.withOpacity(
                      0.8), // Light translucent background for the graph
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Colors.green,
                      width: 2), // Add border to the graph box
                ),
                child: const Center(
                  child: Text(
                    "Graph goes here", // Placeholder for the graph
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize:
                          20, // Slightly larger font size for better visibility
                      fontWeight: FontWeight.w500, // Medium weight
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16.0),

            // "Block Now" button
            ElevatedButton(
              onPressed: () {
                // Action to be performed when the button is pressed
                print("Block Now button pressed");
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 32.0), // Increased height and width
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold), // Larger and bolder text
                backgroundColor: Colors.green[700], // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
              child: const Text(
                'Block Now',
                style: TextStyle(
                    color: Colors.black), // Change text color to black
              ), // Button text
            ),

            const SizedBox(height: 16.0),

            // Daily quote and message section
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.green[200], // Earthy green for quote box
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Daily Quote: "The Earth does not belong to us, we belong to the Earth." - Chief Seattle',
                textAlign: TextAlign.center, // Center the text
                style: TextStyle(
                  fontSize: 18, // Larger font size for the quote
                  fontStyle: FontStyle.italic, // Italic style for emphasis
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
