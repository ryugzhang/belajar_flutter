import 'package:flutter/material.dart';

class HalamanDialog extends StatefulWidget {
  const HalamanDialog({Key? key}) : super(key: key);

  @override
  State<HalamanDialog> createState() => _HalamanDialogState();
}

SnackBar widget_snackbar1 = SnackBar(
  content: Text("Anda sudah berhasil klik snackbar 1"),
  action: SnackBarAction(
    label: "Close",
    onPressed: (){

    },
  ),
);

class _HalamanDialogState extends State<HalamanDialog> {
  Divider baris_pembatas = Divider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              ElevatedButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(widget_snackbar1);
                  },
                  child: Text("Snackbar1"),
              ),

              baris_pembatas,

              ElevatedButton(
                  onPressed: (){
                    SnackBar widget_snackbar2 = SnackBar(
                      content: Text("Anda gagal klik snackbar 2"),
                      action: SnackBarAction(
                        label: "Buka Snackbar 1",
                        onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(widget_snackbar1);
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(widget_snackbar2);
                  },
                  child: Text("Snackbar 2")
              ),

              ElevatedButton(
                  onPressed: (){

                  //  Widget Banner
                    MaterialBanner widget_materialbanner1 = MaterialBanner(
                        content: Text("Anda berhasil klik banner 1"),
                        actions: [
                          ElevatedButton(
                              onPressed: (){
                                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                              },
                              child: Text("Tutup")
                          )
                        ]
                    );

                    ScaffoldMessenger.of(context).showMaterialBanner(widget_materialbanner1);

                  },
                  child: Text("Material Banner"),
              ),

              ElevatedButton(
                  onPressed: (){

                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("WARNING", style: TextStyle(
                                  color: Colors.red
                              )),
                              content: Text("Ada pesan masuk"),
                              actions: [
                                ElevatedButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text("Tutup")
                                )
                              ]
                          );
                        }
                    );


                  },
                  child: Text("Dialog"),
              ),

              ElevatedButton(
                  onPressed: (){

                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Ada Notif"),
                            ),
                          );
                        }
                    );


                  },
                  child: Text("Dialog biasa"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
