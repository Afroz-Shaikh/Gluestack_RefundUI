import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3FF),
      appBar: AppBar(
        leading: GSIcon(
          icon: Icons.arrow_back,
          style: GSStyle(
            color: $GSColors.white,
          ),
        ),
        centerTitle: false,
        backgroundColor: $GSColors.purple500,
        title: GSText(
          text: 'Refund Order Page',
          style: GSStyle(
              textStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
      bottomNavigationBar: GSVStack(
        mainAxisSize: MainAxisSize.min,
        children: [
          GSBox(
            style: GSStyle(
              bg: Colors.white,
              padding: const EdgeInsets.all(10),
            ),
            child: GSCenter(
              child: SafeArea(
                child: GSButton(
                  style: GSStyle(
                    width: MediaQuery.sizeOf(context).width - 20,
                    bg: $GSColors.purple500,
                    borderRadius: 5,
                  ),
                  onPressed: () {},
                  child: const GSText(
                    text: 'SUBMIT',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: GSVStack(
          children: [
            GSBox(
                child: GSBox(
              style: GSStyle(
                padding: const EdgeInsets.all(10),
                bg: $GSColors.white,
                width: double.maxFinite,
              ),
              child: GSBox(
                  style: GSStyle(
                    borderRadius: 5,
                    padding: const EdgeInsets.all(10),
                    bg: const Color(0xffF3F4F6),
                  ),
                  child: GSVStack(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GSHStack(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GSImage(
                            fit: BoxFit.cover,
                            style: GSStyle(
                              ios: GSStyle(width: 60),
                              android: GSStyle(width: 60),
                              margin: EdgeInsets.zero,
                              padding: const EdgeInsets.all(0),
                              borderRadius: 5,
                            ),
                            imageType: GSImageType.network,
                            path:
                                'https://images.unsplash.com/photo-1540331547168-8b63109225b7?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybCUyMG9yYW5nZXxlbnwwfHwwfHx8MA%3D%3D',
                          ),
                          const SizedBox(width: 10),
                          GSVStack(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GSText(
                                text: 'Sweater Dress',
                                style: GSStyle(
                                    textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                              ),
                              GSText(
                                text: 'Girl self Design',
                                style: GSStyle(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                )),
                              ),
                              GSText(
                                text: '\$1,999',
                                style: GSStyle(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      const GSHStack(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GSText(
                            text: 'Select Reason',
                          ),
                          GSIcon(icon: Icons.arrow_forward)
                        ],
                      ),
                    ],
                  )),
            )),
            const SizedBox(
              height: 10,
            ),

            GSBox(
              style: GSStyle(
                padding: const EdgeInsets.all(10),
                bg: Colors.white,
              ),
              child: const GSVStack(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description'),
                  GSTextArea(
                    hintText: 'Refund Reason (Optional)',
                  )
                ],
              ),
            ),
            //* Desciption Box
            GSBox(
              style: GSStyle(
                padding: const EdgeInsets.all(10),
                bg: Colors.white,
              ),
              child: const GSVStack(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description'),
                  GSTextArea(
                    hintText: 'Refund Reason (Optional)',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GSBox(
              style: GSStyle(
                padding: const EdgeInsets.all(10),
                bg: Colors.white,
              ),
              child: const GSVStack(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Refund Amount'),
                  GSTextArea(
                    hintText: 'Enter amount you want to be refunded',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GSBox(
              style: GSStyle(
                padding: const EdgeInsets.all(10),
                bg: Colors.white,
              ),
              child: const GSVStack(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email Address'),
                  GSTextArea(
                    hintText: 'Enter your email address',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
