import '../models/module_details_type.dart';
import '../models/module_model.dart';
import '../models/module_orientation_enum.dart';
import '../theme/app_colors.dart';
import '../theme/app_files.dart';
import '../theme/app_images.dart';

/// COLOR SCHEME
/// --------------------------
///  backgroundColor: AppColors.darkGreen,
///  textColor: AppColors.lightText,
///  accentColor: AppColors.pastelGreen,
///  --------------------------
///  backgroundColor: AppColors.pastelOrange,
///  textColor: AppColors.middleDartText,
///  accentColor: AppColors.palePink,
///  --------------------------
///  backgroundColor: AppColors.palePink,
///  textColor: AppColors.middleDartText,
///  accentColor: AppColors.paleOrange,
///  --------------------------
///  backgroundColor: AppColors.pastelGreen,
///  textColor: AppColors.middleDartText,
///  accentColor: AppColors.darkGreen,

final List<ModuleModel> modulesData = <ModuleModel>[
  ///About Me
  ModuleModel(
    title: '',
    projectName: '',
    menuName: 'Обо мне',
    backgroundColor: AppColors.darkGreen,
    textColor: AppColors.palePink,
    accentColor: AppColors.pastelGreen,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.left,
    moduleDetailsModel: const ModuleDetailsModel.appFile(appFile: 'Обо мне'),
    downloadFunction: () {},
  ),
  ///Module 2
  ModuleModel(
    menuName: '«Разработка простейшего роботизированного устройства»',
    backgroundColor: AppColors.pastelOrange,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.palePink,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.right,
    title: 'Практическая работа',
    projectName: '«Разработка простейшего роботизированного устройства»',
    moduleDetailsModel: const ModuleDetailsModel.image(image: AppImages.module_2),
    downloadFunction: () {},
  ),
  ///Module 3
  ModuleModel(
    menuName: '«Профессия инженера-конструктора vs инженера-технолога»',
    backgroundColor: AppColors.palePink,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.paleOrange,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.left,
    title: 'Презентация',
    projectName: '«Профессия инженера-конструктора vs инженера-технолога»',
    moduleDetailsModel: const ModuleDetailsModel.presentation(presentationImages: AppImages.module_3),
    downloadFunction: () {},
  ),
  ///Module 4
  ModuleModel(
    menuName: '«Содержание деятельности инженера-энергетика»',
    backgroundColor: AppColors.pastelGreen,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.darkGreen,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.right,
    title: 'Презентация',
    projectName: '«Содержание деятельности инженера-энергетика»',
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: '«Содержание деятельности инженера-энергетика»'),
    downloadFunction: () {},
  ),
  ///Module 5
  ModuleModel(
    menuName: '«MagLog City»: Городская подземная маглев-логистика»',
    backgroundColor: AppColors.darkGreen,
    textColor: AppColors.lightText,
    accentColor: AppColors.pastelGreen,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.left,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: '«MagLog City»: Городская подземная маглев-логистика»'),
    downloadFunction: () {},
    title: 'Проектная работа',
    projectName: '«MagLog City»: Городская подземная маглев-логистика»',
  ),
  ///Module 6
  ModuleModel(
    menuName: '«Сетевой график строительства одноэтажного жилого дома»',
    backgroundColor: AppColors.pastelOrange,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.palePink,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.right,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: '«Сетевой график строительства одноэтажного жилого дома»'),
    downloadFunction: () {},
    title: 'Проектная работа',
    projectName: '«Сетевой график строительства одноэтажного жилого дома»',
  ),
  ///Module 7
  ModuleModel(
    menuName: '«Этапы проектирования стартапа»',
    backgroundColor: AppColors.palePink,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.paleOrange,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.left,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: AppFiles.module_7),
    downloadFunction: () {},
    title: 'Проектная работа',
    projectName: '«Этапы проектирования стартапа»',
  ),
  ///Module 8
  ModuleModel(
    menuName: '«Разработка логотипа и элементов фирменного стиля для упаковки»',
    backgroundColor: AppColors.pastelGreen,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.darkGreen,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.right,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: '«Разработка логотипа и элементов фирменного стиля для упаковки»'),
    downloadFunction: () {},
    title: 'Творческая работа',
    projectName:
        '«Разработка логотипа и элементов фирменного стиля для упаковки»',
  ),
  ///Module 9
  ModuleModel(
    menuName: '«Этический кодекс инженера: принципы и ответственность»',
    backgroundColor: AppColors.darkGreen,
    textColor: AppColors.lightText,
    accentColor: AppColors.pastelGreen,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.left,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: '«Этический кодекс инженера: принципы и ответственность»'),
    downloadFunction: () {},
    title: 'Реферат',
    projectName: '«Этический кодекс инженера: принципы и ответственность»',
  ),
  ///Module 10
  ModuleModel(
    menuName: 'Описание принципов работы управляющего контроллера',
    backgroundColor: AppColors.pastelOrange,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.palePink,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.right,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: 'Описание принципов работы управляющего контроллера'),
    downloadFunction: () {},
    title: '',
    projectName: 'Описание принципов работы управляющего контроллера',
  ),
  ///Module 11
  ModuleModel(
    menuName:
        '«Описание конструкции и принципа действия электродвигателя/трансформатора»',
    backgroundColor: AppColors.palePink,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.paleOrange,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.left,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: '«Описание конструкции и принципа действия электродвигателя/трансформатора»'),
    downloadFunction: () {},
    title: 'Практическая работа',
    projectName:
        '«Описание конструкции и принципа действия электродвигателя/трансформатора»',
  ),
  ///Module 12
  ModuleModel(
    menuName: 'Схема электрической сети',
    backgroundColor: AppColors.pastelGreen,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.darkGreen,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.right,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: 'Схема электрической сети'),
    downloadFunction: () {},
    title: '',
    projectName: 'Схема электрической сети',
  ),
  ///Module 13
  ModuleModel(
    menuName: '«Траектории движения на примыкании и пересечении дорог»',
    backgroundColor: AppColors.darkGreen,
    textColor: AppColors.lightText,
    accentColor: AppColors.pastelGreen,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.left,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: '«Траектории движения на примыкании и пересечении дорог»'),
    downloadFunction: () {},
    title: 'Практическая работа',
    projectName: '«Траектории движения на примыкании и пересечении дорог»',
  ),
  ///Module 14
  ModuleModel(
    menuName: '«Мудборд интерьера»',
    backgroundColor: AppColors.pastelOrange,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.palePink,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.right,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: '«Мудборд интерьера»'),
    downloadFunction: () {},
    title: 'Творческая работа',
    projectName: '«Мудборд интерьера»',
  ),
  ///Module 15
  ModuleModel(
    menuName: '«Коллаж праздничного пространства»',
    backgroundColor: AppColors.palePink,
    textColor: AppColors.middleDartText,
    accentColor: AppColors.paleOrange,
    backgroundImage: AppImages.mainPhoto,
    moduleOrientationEnum: ModuleOrientationEnum.left,
    moduleDetailsModel: ModuleDetailsModel.appFile(appFile: '«Коллаж праздничного пространства»'),
    downloadFunction: () {},
    title: 'Творческая работа',
    projectName: '«Коллаж праздничного пространства»',
  ),
];
