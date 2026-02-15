import 'package:ai_chat_app/core/constant/app_icons.dart';

class AppString {
  final String chatDescrition =
      '''I am an AI-powered chatbot designed to provide intelligent and human-like responses. I can understand user queries, deliver accurate answers, automate conversations, assist with tasks, and offer personalized support in real time. I continuously learn to improve interactions for a smarter, smoother experience. However, I may not always understand complex or ambiguous queries, can make mistakes, and rely on the quality of input provided. I do not have real-time awareness or human emotions, so clarification may sometimes be needed to ensure accuracy.''';

  final String message =
      '''I am an AI-powered chatbot designed to provide intelligent and human-like responses. I can understand user queries, deliver accurate answers, automate conversations, assist with tasks, and offer personalized support in real time. I continuously learn to improve interactions for a smarter, smoother experience. However, I may not always understand complex or ambiguous queries, can make mistakes, and rely on the quality of input provided. I do not have real-time awareness or human emotions, so clarification may sometimes be needed to ensure accuracy.
         However, I may not always understand complex or ambiguous queries, can make mistakes, and rely on the quality of input provided. I do not have real-time awareness or human emotions, so clarification may sometimes be needed to ensure accuracy.''';

  final List<Map<String, String>> onboardingData = [
    {
      'image': AppIcons().chatbot,
      'title': 'Hi! I’m Zap',
      'subtitle':
          'An AI-powered chatbot designed to provide instant, intelligent, and human-like responses. It automates conversations, answers user queries, offers personalized assistance,',
    },
    {
      'image': AppIcons().chatbot,
      'title': 'About my capabilities:',
      'subtitle':
          '''I can understand user queries, provide accurate responses, automate conversations, assist with tasks, and deliver personalized support in real time. I am designed to learn continuously and improve interactions for a smarter, smoother user experience.''',
    },
    {
      'image': AppIcons().chatbot2,
      'title': 'My Limitations:',
      'subtitle':
          '''“I may not always understand complex or ambiguous queries, can make mistakes, and rely on available data and training to generate responses. I do not have real-time awareness or emotions like a human. My responses depend on the quality of input provided, and I may require clarification for better accuracy''',
    },
  ];
}
