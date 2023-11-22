// import 'package:flutter/material.dart';
// import 'package:hana_grosir/widgets/left_drawer.dart';
// import 'package:hana_grosir/screens/menu.dart';
// import 'package:hana_grosir/widgets/shop_card.dart';
// import 'package:hana_grosir/models/item_model.dart';

// List<Product> products = [];

// class ShopFormPage extends StatefulWidget {
//   //const ShopFormPage({Key? key, required this.products}) : super(key: key);
//   const ShopFormPage({super.key});

//   @override
//   State<ShopFormPage> createState() => _ShopFormPageState();
// }

// class _ShopFormPageState extends State<ShopFormPage> {
//   final _formKey = GlobalKey<FormState>();
//   String _name = "";
//   int _price = 0;
//   int _ammount = 0;
//   String _description = "";

//   // void _addProduct() {
//   //   // Create a new product with the entered information
//   //   Product newProduct = Product(
//   //     _name,
//   //     _price as String,
//   //     _description,
//   //     _ammount as String,
//   //   );

//   //   // Update the shared products list
//   //   widget.products.add(newProduct);

//   //   // Navigate back to the previous screen
//   //   Navigator.pop(context);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text(
//             'Form Tambah Item',
//           ),
//         ),
//         backgroundColor: Colors.indigo,
//         foregroundColor: Colors.white,
//       ),
//       drawer: const LeftDrawer(),
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Nama Item",
//                     labelText: "Nama Item",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                   onChanged: (String? value) {
//                     setState(() {
//                       _name = value!;
//                     });
//                   },
//                   validator: (String? value) {
//                     if (value == null || value.isEmpty) {
//                       return "Nama tidak boleh kosong!";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Jumlah",
//                     labelText: "Jumlah",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                   onChanged: (String? value) {
//                     setState(() {
//                       _ammount = int.parse(value!);
//                     });
//                   },
//                   validator: (String? value) {
//                     if (value == null || value.isEmpty) {
//                       return "Jumlah tidak boleh kosong!";
//                     }
//                     if (int.tryParse(value) == null) {
//                       return "Jumlah harus berupa angka!";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Harga",
//                     labelText: "Harga",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                   onChanged: (String? value) {
//                     setState(() {
//                       _price = int.parse(value!);
//                     });
//                   },
//                   validator: (String? value) {
//                     if (value == null || value.isEmpty) {
//                       return "Harga tidak boleh kosong!";
//                     }
//                     if (int.tryParse(value) == null) {
//                       return "Harga harus berupa angka!";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Deskripsi",
//                     labelText: "Deskripsi",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                   onChanged: (String? value) {
//                     setState(() {
//                       _description = value!;
//                     });
//                   },
//                   validator: (String? value) {
//                     if (value == null || value.isEmpty) {
//                       return "Deskripsi tidak boleh kosong!";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               // Align(
//               //   alignment: Alignment.bottomCenter,
//               //   child: Padding(
//               //     padding: const EdgeInsets.all(8.0),
//               //     child: ElevatedButton(
//               //       style: ButtonStyle(
//               //         backgroundColor: MaterialStateProperty.all(Colors.indigo),
//               //       ),
//               //       onPressed: () {
//               //         if (_formKey.currentState!.validate()) {
//               //           Fields newBook = Fields(
//               //             name: _name,
//               //             price: _price,
//               //             ammount: _ammount,
//               //             description: _description,
//               //             user: null,
//               //             picture: '',
//               //             weight: '',
//               //           );
//               //           products.add(newBook);
//               //           showDialog(
//               //             context: context,
//               //             builder: (context) {
//               //               return AlertDialog(
//               //                 title: const Text('Produk berhasil tersimpan'),
//               //                 content: SingleChildScrollView(
//               //                   child: Column(
//               //                     crossAxisAlignment: CrossAxisAlignment.start,
//               //                     children: [
//               //                       Text('Nama: $_name'),
//               //                       Text('Jumlah: $_ammount'),
//               //                       Text('Harga: $_price'),
//               //                       Text('Deskripsi: $_description'),
//               //                     ],
//               //                   ),
//               //                 ),
//               //                 actions: [
//               //                   TextButton(
//               //                     child: const Text('OK'),
//               //                     onPressed: () {
//               //                       Navigator.pop(context);
//               //                     },
//               //                   ),
//               //                 ],
//               //               );
//               //             },
//               //           );
//               //           _formKey.currentState!.reset();
//               //         }
//               //       },
//               //       child: const Text(
//               //         "Save",
//               //         style: TextStyle(color: Colors.white),
//               //       ),
//               //     ),
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:hana_grosir/screens/menu.dart';
import 'package:hana_grosir/widgets/left_drawer.dart'; // Impor drawer yang sudah dibuat sebelumnya

class ShopFormPage extends StatefulWidget {
  const ShopFormPage({Key? key});

  @override
  State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";
  int _ammount = 0;

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Produk',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(), // Tambahkan drawer yang sudah dibuat di sini
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama",
                    labelText: "Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nama tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Jumlah",
                    labelText: "Jumlah",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _ammount = int.parse(value!);
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Jumlah tidak boleh kosong!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Jumlah harus berupa angka!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Harga",
                    labelText: "Harga",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _price = int.parse(value!);
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Harga tidak boleh kosong!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Harga harus berupa angka!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Deskripsi",
                    labelText: "Deskripsi",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Deskripsi tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo),
                    ),
                    // onPressed: () {
                    //   if (_formKey.currentState!.validate()) {
                    //     showDialog(
                    //       context: context,
                    //       builder: (context) {
                    //         return AlertDialog(
                    //           title: const Text('Produk berhasil tersimpan'),
                    //           content: SingleChildScrollView(
                    //             child: Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Text('Nama: $_name'),
                    //                 Text('Harga: $_price'),
                    //                 Text('Deskripsi: $_description'),
                    //                 // Tambahkan value lainnya jika ada
                    //               ],
                    //             ),
                    //           ),
                    //           actions: [
                    //             TextButton(
                    //               child: const Text('OK'),
                    //               onPressed: () {
                    //                 Navigator.pop(context);
                    //               },
                    //             ),
                    //           ],
                    //         );
                    //       },
                    //     );
                    //     _formKey.currentState!.reset();
                    //   }
                    // },
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // Kirim ke Django dan tunggu respons
                        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                        final response = await request.postJson(
                            "http://localhost:8000/create-flutter/",
                            jsonEncode(<String, String>{
                              'name': _name,
                              'ammount': _ammount.toString(),
                              'price': _price.toString(),
                              'description': _description,
                              // TODO: Sesuaikan field data sesuai dengan aplikasimu
                            }));
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Item baru berhasil disimpan!"),
                          ));
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content:
                                Text("Terdapat kesalahan, silakan coba lagi."),
                          ));
                        }
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
