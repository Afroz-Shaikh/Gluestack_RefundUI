import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? const Color(0xff374151)
              : const Color(0xffF5F3FF),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: GSIcon(
            icon: Icons.arrow_back,
            style: GSStyle(
              color: $GSColors.white,
            ),
          ),
        ),
        centerTitle: false,
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? $GSColors.violet500
                : $GSColors.violet600,
        title: GSText(
          text: 'Refund Order Page',
          style: GSStyle(
            textStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: const BottomSubmitButton(),
      body: SingleChildScrollView(
        child: GSVStack(
          children: [
            GSBox(
                child: GSBox(
              style: GSStyle(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                bg: $GSColors.white,
                dark: GSStyle(bg: const Color(0xff1F2937)),
                width: double.maxFinite,
              ),
              child: GSBox(
                  style: GSStyle(
                    borderRadius: 5,
                    padding: const EdgeInsets.all(10),
                    bg: const Color(0xffF3F4F6),
                    dark: GSStyle(bg: const Color(0xff374151)),
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
                              Text(
                                'Sample Text',
                              ),
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
                                  ),
                                ),
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
                    ],
                  )),
            )),
            GSBox(
              style: GSStyle(
                padding: const EdgeInsets.all(10),
                bg: Colors.white,
                dark: GSStyle(bg: const Color(0xff1F2937)),
                // dark: GSStyle(bg: const Color(0xff374151)),
              ),
              child: const GSHStack(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GSText(
                    text: 'Select Reason',
                  ),
                  GSIcon(icon: Icons.arrow_forward_ios_rounded)
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
                dark: GSStyle(bg: const Color(0xff1F2937)),
              ),
              child: GSVStack(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GSText(text: 'Add Photo or Video'),
                  const SizedBox(height: 10),
                  GSBox(
                      style: GSStyle(
                        color: Colors.black,
                        // bg: Colors.red,
                        borderColor: Colors.grey,
                        borderWidth: 1,
                        padding: const EdgeInsets.all(10),
                        borderRadius: 5,
                        height: 100,
                      ),
                      child: GSCenter(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GSIcon(
                              icon: Icons.cloud_upload_outlined,
                              style: GSStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const GSText(text: 'Upload')
                          ],
                        ),
                      ))
                ],
              ),
            ),
            //* Desciption Box
            GSBox(
              style: GSStyle(
                padding: const EdgeInsets.all(10),
                bg: Colors.white,
                dark: GSStyle(bg: const Color(0xff1F2937)),
              ),
              child: const GSVStack(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GSText(text: 'Description'),
                  SizedBox(height: 10),
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
                dark: GSStyle(bg: const Color(0xff1F2937)),
              ),
              child: const GSVStack(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GSText(text: 'Refund Amount'),
                  SizedBox(height: 10),
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
                dark: GSStyle(bg: const Color(0xff1F2937)),
              ),
              child: const GSVStack(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GSText(text: 'Email Address'),
                  SizedBox(height: 10),
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

class BottomSubmitButton extends StatelessWidget {
  const BottomSubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSVStack(
      mainAxisSize: MainAxisSize.min,
      children: [
        GSBox(
          style: GSStyle(
            bg: Colors.white,
            dark: GSStyle(bg: const Color(0xff374151)),
            padding: const EdgeInsets.all(10),
          ),
          child: GSCenter(
            child: SafeArea(
              child: GSButton(
                style: GSStyle(
                  width: MediaQuery.sizeOf(context).width - 20,
                  borderRadius: 5,
                ),
                onPressed: () {},
                child: GSText(
                  text: 'SUBMIT',
                  style: GSStyle(
                    textStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
