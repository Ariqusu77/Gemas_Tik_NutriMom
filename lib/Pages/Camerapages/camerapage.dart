import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'Pages/resultpage.dart';

class MyCameraPage extends StatefulWidget {
  const MyCameraPage({super.key});

  @override
  State<MyCameraPage> createState() => _MyCameraPageState();
}

class _MyCameraPageState extends State<MyCameraPage> {
  CameraController? _controller;
  List<CameraDescription>? cameras;
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    cameras = await availableCameras();
    if (cameras != null && cameras!.isNotEmpty) {
      _controller = CameraController(
        cameras![0],
        ResolutionPreset.high,
      );

      _controller?.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {
          _isCameraInitialized = true;
        });
      });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _navigateToImagePreview(BuildContext context, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageResultPage(imagePath: imagePath),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _isCameraInitialized
        ? Stack(
            children: [
              AspectRatio(
                aspectRatio: 1 / _controller!.value.aspectRatio,
                child: CameraPreview(_controller!),
              ),
              Column(
                children: [
                  const Spacer(),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_controller!.value.isInitialized) {
                          try {
                            XFile file = await _controller!.takePicture();
                            _navigateToImagePreview(context, file.path);
                          } catch (e) {
                            print('Error taking picture: $e');
                          }
                        }
                      },
                      child: const Text('Take Photo'),
                    ),
                  ),
                  const SizedBox(height: 48,),
                ],
              ),
            ],
          )
        : const Center(
            child: CircularProgressIndicator(),
    );
  }
}
