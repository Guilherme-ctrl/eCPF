// import 'dart:async';
// import 'dart:math';
// import 'package:camera/camera.dart';
// import 'package:ecpf/core/users/users.dart';
// import 'package:flutter/material.dart';
// import 'package:tflite/tflite.dart';
// import 'package:image/image.dart' as img;

// import '../../../core/users/models/users_model.dart';

// class FacialRecognitionPage extends StatefulWidget {
//     const FacialRecognitionPage({Key? key}) : super(key: key);

//     @override
//     State<FacialRecognitionPage> createState() => _FacialRecognitionPageState();
// }

// class _FacialRecognitionPageState extends State<FacialRecognitionPage> {
//     CameraController? _cameraController;
//     bool _isRecognizing = false;
//     String _recognitionResult = '';
//     List<CameraDescription> cameras = [];

//     // Banco de dados local de exemplo (substituir por um banco de dados real)
//     final List<User> users = Users().users;

//     // Carrega o modelo TensorFlow (a ser modificado para o modelo específico)
//     void _loadModel() async {
//     try {
//         await Tflite.loadModel(
//         model: 'assets/models/model.tflite', // Caminho do modelo
//         labels: 'assets/models/labels.txt', // Caminho dos rótulos
//         );
//         print('Modelo carregado com sucesso!');
//     } catch (e) {
//         print('Erro ao carregar o modelo: $e');
//     }
//     }

//     // Inicia a câmera
//     void _initCamera() async {
//     try {
//         cameras = await availableCameras();
//         _cameraController = CameraController(cameras[0], ResolutionPreset.medium);
//         await _cameraController!.initialize();
//         setState(() {});
//     } catch (e) {
//         print('Erro ao iniciar a câmera: $e');
//     }
//     }

//     // Processa a imagem da câmera para reconhecimento facial
//     Future<void> _recognizeFace() async {
//     if (_cameraController != null && _cameraController!.value.isInitialized) {
//         try {
//         setState(() {
//             _isRecognizing = true;
//         });

//         // Captura a imagem da câmera
//         final XFile image = await _cameraController!.takePicture();

//         // Converte a imagem para o formato necessário pelo modelo TensorFlow
//         final imageBytes = await image.readAsBytes();
//         final imageData = img.decodeImage(imageBytes);
//         final inputImage = img.copyResize(imageData!, width: 224, height: 224);
//         final inputTensor = imageToByteList(inputImage);

//         // Realiza a inferência com o modelo TensorFlow
//         final recognitions = await Tflite.runModelOnBinary(binary: inputTensor);

//         // Interpreta o resultado da inferência
//         if (recognitions != null) {
//             final recognizedUser = _findMatchingUser(recognitions);
//             if (recognizedUser != null) {
//             setState(() {
//                 _recognitionResult = 'Usuário identificado: ${recognizedUser.name}';
//             });
//             } else {
//             setState(() {
//                 _recognitionResult = 'Usuário não encontrado.';
//             });
//             }
//         } else {
//             setState(() {
//             _recognitionResult = 'Falha no reconhecimento.';
//             });
//         }
//         } catch (e) {
//         print('Erro no reconhecimento: $e');
//         } finally {
//         setState(() {
//             _isRecognizing = false;
//         });
//         }
//     }
//     }

//     // Encontra o usuário correspondente no banco de dados
//     User? _findMatchingUser(List recognitions) {
//     // TODO: Substituir por uma lógica de comparação de rostos real
//     final random = Random();
//     if (random.nextBool()) {
//         return users[random.nextInt(users.length)]; // Retorna um usuário aleatório para simulação
//     }
//     return null;
//     }

//     @override
//     void initState() {
//     super.initState();
//     _loadModel(); // Carrega o modelo
//     _initCamera(); // Inicia a câmera
//     }

//     @override
//     void dispose() {
//     _cameraController?.dispose();
//     Tflite.close(); // Fecha o modelo TensorFlow
//     super.dispose();
//     }

//     @override
//     Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         title: const Text('Reconhecimento Facial'),
//         ),
//         body: Center(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//             // Exibe a prévia da câmera
//             if (_cameraController != null && _cameraController!.value.isInitialized)
//                 CameraPreview(_cameraController!)
//             else
//                 const Center(child: CircularProgressIndicator()),

//             const SizedBox(height: 20),
//             // Botão para iniciar o reconhecimento
//             ElevatedButton(
//                 onPressed: _isRecognizing ? null : _recognizeFace,
//                 child: Text(_isRecognizing ? 'Reconhecendo...' : 'Iniciar Reconhecimento'),
//             ),
//             const SizedBox(height: 20),
//             // Exibe o resultado do reconhecimento
//             Text(
//                 _recognitionResult,
//                 style: const TextStyle(fontSize: 18),
//             ),
//             ],
//         ),
//         ),
//     );
//     }
// }