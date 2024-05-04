import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        AppStrings.arabicCode: <String, String>{
          AppStrings.logIn: 'تسجيل الدخول',
          AppStrings.language: 'اللغة',
          AppStrings.eg: 'ج.م ',
          AppStrings.cantBeEmpty: 'لا يمكن ان تكون فارغة',
          AppStrings.cantBeMore: 'لا يمكن ان تكون اكثر من',
          AppStrings.cantBeLess: 'لا يمكن ان تكون اقل من',
          AppStrings.yes: 'نعم',
          AppStrings.no: 'لا',
          AppStrings.items: 'الاصناف',
          AppStrings.showItems: 'عرض الاصناف',
          AppStrings.sup: 'الموردين',
          AppStrings.deprtment: 'الاقسام',
          //main screen
          AppStrings.header: 'header',
          AppStrings.body: 'body',
          AppStrings.bottom: 'bottom',
          AppStrings.welcome: 'اهلا ومرحبا بكم',
          AppStrings.mainScreen: 'الصفحة الرئيسية',
          AppStrings.goBack: 'الرجوع',
          AppStrings.idNumber: 'الرقم التعريفي',
          AppStrings.stockBills: 'فواتير المخزن',
          AppStrings.stockReports: 'تقارير المخزن',
          AppStrings.shortage: 'عجز',
          AppStrings.stockMax: 'زيادات المخزن',
          AppStrings.notFoundItems: 'الاصناف الغير متوفرة',
          AppStrings.currentItems: 'الاصناف المتوفرة',
          AppStrings.stockMin: 'نواقص المخزن',
          AppStrings.opreation: 'العملية',
          AppStrings.stockCheck: 'جرد المخزن',
          AppStrings.orderdQuantityNotFound: 'الكمية المطلوبة غير متاحة',
          AppStrings.numberOfitems: 'عدد الاصناف',
          AppStrings.numberOfLights: 'عدد اللمبات',
          AppStrings.numberOfSaleditems: 'عدد الاصناف المباعة',
          AppStrings.addItems: 'اضافة صنف',
          AppStrings.deleteItem: 'حذف الصنف',
          AppStrings.editItem: 'تعديل الصنف',
          AppStrings.editItems: 'تعديل الاصناف',
          AppStrings.noitemsEdited: 'لا يوجد تعديلات',
          AppStrings.alreadyIn: 'المنتج مضاف حدد الكمية',
          AppStrings.agents: 'العملاء',
          AppStrings.addSup: 'اضافة مورد',
          AppStrings.addAgent: 'اضافة عميل',
          AppStrings.addDetails: 'تفاصيل العميل',
          AppStrings.place: 'المكان',
          AppStrings.editSup: 'تعديل الموردين',
          AppStrings.editAgent: 'تعديل العميل',
          AppStrings.choeseImage: 'اختيار الصورة',
          AppStrings.image: 'الصورة',
          AppStrings.deleteSups: 'حذف الموردين',
          AppStrings.deleteSup: 'حذف المورد',
          AppStrings.supName: 'اسم المورد',
          AppStrings.supNameFrist: 'المورد الاول',
          AppStrings.supNameSecond: 'المورد الثاني',
          AppStrings.supNameThird: 'المورد الثالث',
          AppStrings.supNameForth: 'المورد الرابع',
          AppStrings.supTel: 'رقم المورد',
          AppStrings.tel: 'رقم الموبايل',
          AppStrings.wts: 'رقم الواتس',
          AppStrings.cash: 'رقم كاش',
          AppStrings.billCash: 'كاش',
          AppStrings.billAgel: 'اجل',
          AppStrings.facebook: 'Facebook',
          AppStrings.instgram: 'Instgram',
          AppStrings.website: 'Website',
          AppStrings.wordOfMouth: 'word of mouth',
          AppStrings.otherDetails: 'بيانات اخرى',
          AppStrings.pleseFullAllDetails: 'please fill all details',
          AppStrings.youKnowUs: 'You knew us through',
          AppStrings.editdepartment: 'تعديل قسم',
          AppStrings.editcourse: 'تعديل مادة',
          //works
          AppStrings.workes: 'الورديات',
          AppStrings.workesSafy: 'صافي الورديات',
          AppStrings.workesPayment: 'مصاريف الورديات',
          AppStrings.billKind: 'نوع الفاتورة',
          AppStrings.cashierName: 'اسم الكاشير',
          AppStrings.choseaCshierName: 'برجاء اختيار الكاشير',
          AppStrings.numberOfBills: 'عدد الفواتير',
          AppStrings.openWork: 'فتح وردية',
          AppStrings.closeWork: 'غلق الوردية',
          AppStrings.doneCloseWorke: 'تم غلق الوردية',
          AppStrings.editWork: 'تعديل وردية',
          AppStrings.salesWork: 'مبيعات الوردية',
          AppStrings.currentCash: 'النقدية المتاحة',
          AppStrings.currentCashNotEmpty: 'يوجد نقدية',
          AppStrings.useCantCloseWork: 'لا يمكنك غلق الوردية',
          AppStrings.backBillsWork: 'فواتير مرتجع الوردية',
          AppStrings.salesBillsWork: 'فواتير مبيعات الوردية',
          AppStrings.salesDetailsWork: 'تفاصيل مبيعات الوردية',
          AppStrings.workDetails: 'تفاصيل الوردية',
          AppStrings.backSalesWork: 'مرتجع مبيعات الوردية',
          AppStrings.startWorke: 'بداية الوردية',
          AppStrings.currentWork: 'الوردية الحالية',
          AppStrings.noCurrentWork: 'لا يوجد وردية حالية',
          AppStrings.currentValue: 'الحالي',
          AppStrings.noValue: 'لا يوجد قيمة',
          AppStrings.workNum: 'رقم الوردية',
          AppStrings.endWorke: 'نهاية الوردية',
          AppStrings.planName: 'اسم الخطة',
          AppStrings.plandesc: 'وصف الخطة',
          AppStrings.noDesc: 'لا يوجد وصف',
          AppStrings.desc: 'الوصف',
          AppStrings.planNumper: 'رقم الخطة',
          AppStrings.planDay: 'خطة يوم',
          AppStrings.plans: 'الخطط',
          AppStrings.addPlan: 'اضافة خطة',
          AppStrings.plansView: 'عرض الخطط',
          AppStrings.deletePlan: 'حذف الخطة',

          // AppStrings.editcourse: 'تعديل مادة',
          AppStrings.addcourse: 'اضافة مادة',
          AppStrings.deletcourse: 'حذف مادة',
          AppStrings.showcourses: 'عرض المواد',
          AppStrings.numberOfStudent: 'عدد الطلاب',
          AppStrings.editstudent: 'تعديل طالب',
          AppStrings.addstudent: 'اضافة طالب',
          AppStrings.deletstudent: 'حذف طالب',
          AppStrings.showstudents: 'عرض طالب',
          AppStrings.timeTable: 'الجدول',

          //billOut
          AppStrings.addBillOrder: 'اضافة حجز',
          AppStrings.addDof3a: 'اضافة دفعة',
          AppStrings.addTa7sel: 'اضافة تحصيل',
          AppStrings.ta7sel: 'تحصيل',
          AppStrings.dof3a: 'دفعة',
          AppStrings.orders: 'الاوردرات',
          AppStrings.tasleem: 'تسليم',
          AppStrings.tasleeFull: 'تسليم نهائي',
          AppStrings.billOut: 'المبيعات',
          AppStrings.addBillOut: 'اضافة مبيعات',
          AppStrings.components: 'الخامات',
          AppStrings.mokonat: 'المكونات',
          AppStrings.componentsStock: 'مخزن الخامات',
          AppStrings.usedComponents: 'الخامات المستخدمة',
          AppStrings.wantedComponents: 'الخامات المطلوبة',
          AppStrings.wanted: 'المطلوب',
          AppStrings.wantedExtract: 'المطلوب تصنيعه',
          AppStrings.avilable: 'المتاح',
          AppStrings.prepareComponents: 'استعلام الخامات',
          AppStrings.details: 'التفاصيل',
          AppStrings.componentsNumber: 'عدد المكونات',
          AppStrings.students: 'الطلاب',
          //bill factory
          AppStrings.theFactory: 'التصنيع',
          AppStrings.billFactory: 'فاتورة التصنيع',
          AppStrings.billFactoryReports: 'تقارير التصنيع',
          AppStrings.addBillProduction: 'اضافة انتاج',
          AppStrings.addBillConsumption: 'اضافة استهلاك',
          AppStrings.billConsumption: 'فاتورة استهلاك',
          AppStrings.billProduction: 'فاتورة انتاج',
          AppStrings.ingredients: 'المقادير',
          AppStrings.courses: 'المواد',
          AppStrings.extentions: 'الاضافات',

          AppStrings.store: 'المعرض',
          AppStrings.productStock: 'مخزن الليزر',
          AppStrings.product: 'منتج',
          AppStrings.subStock: 'المخزن الفرعي',
          AppStrings.sub: 'الفرعي',
          AppStrings.main: 'الرئيسي',
          AppStrings.stockMovement: 'حركة المخزن',
          AppStrings.cost: 'التكلفة',
          AppStrings.productDetails: 'تفاصيل المنتج',
          AppStrings.paid: 'المدفوع',
          AppStrings.pleasePrepareList: 'برجاء تجهيز الحامات',
          AppStrings.pleaseEnterPaid: 'برجاء ادخال المبلغ المدفوع',
          AppStrings.paidLessWanted: 'المبلغ المدفوع اقل من المطلوب',
          AppStrings.unPaid: 'المتبقي',
          AppStrings.backBillOut: 'مرتجع مبيعات',
          AppStrings.billOutReports: 'تقرير المبيعات',
          AppStrings.editBillsOut: 'تعديل فواتير المبيعات',
          AppStrings.editBackBillsOut: 'تعديل مرتجع فواتير المبيعات',
          //bill shortage
          AppStrings.billShortage: 'فاتورة التسوية',
          AppStrings.billsShortage: 'فواتير التسوية',
          AppStrings.billShortagePlus: 'تسوية الزيادة',
          AppStrings.billShortageMinus: 'تسوية العجز',
          AppStrings.thePlus: 'الزيادة',
          AppStrings.theMinus: 'العجز',
          AppStrings.attendence: 'الحضور',
          //billIn
          // AppStrings.deprtments: 'الاقسام',
          AppStrings.adddepartment: 'اضافة قسم',
          AppStrings.showdepartments: 'عرض الاقسام',
          AppStrings.back: 'المرتجع',
          AppStrings.billInReports: 'تقرير المشتريات',
          AppStrings.editBillsIn: 'تعديل فواتير المشتريات',
          AppStrings.viewTheBills: 'عرض الفواتير',
          AppStrings.deletedepartment: 'حذف قسم',
          AppStrings.editBackBillsIn: 'تعديل مرتجع فواتير المشتريات',
          AppStrings.billNumper: 'رقم الفاتورة',
          AppStrings.orderNumper: 'رقم الحجز',
          AppStrings.orderNumperDone: 'رقم التسليم',
          AppStrings.billInBackNumper: 'رقم فاتورة مرتجع المشتريات',
          AppStrings.billOutBackNumper: 'رقم فاتورة مرتجع المبيعات',
          AppStrings.billInNumper: 'رقم فاتورة المشتريات',
          AppStrings.billOutNumper: 'رقم فاتورة المبيعات',
          AppStrings.billTotal: 'اجمالي الفاتورة',
          AppStrings.billDate: 'تاريخ الفاتورة',
          AppStrings.billDetails: 'بيانات الفاتورة',
          AppStrings.billPayment: 'مصاريف',
          AppStrings.workPayment: 'مصاريف الوردية',
          AppStrings.pleaseEnterWantedValues:
              'برجاء ادخال القيم المطلوبة بطريقة صحيحة',
          AppStrings.noSales: 'لا يوجد مبيعات',

          AppStrings.reports: 'التقارير',
          AppStrings.reportsView: 'عرض التقارير',
          AppStrings.monthReport: 'تقرير الشهر',
          AppStrings.billConsumptionNumper: 'رقم فاتورة الاستهلاك',
          AppStrings.billProductionNumper: 'رقم فاتورة الانتاج',
          // AppStrings. reports : 'التقارير',
          // AppStrings. reports : 'التقارير',
          // AppStrings. reports : 'التقارير',
          // AppStrings. reports : 'التقارير',
          // AppStrings. reports : 'التقارير',
          // AppStrings. reports : 'التقارير',
          // AppStrings. reports : 'التقارير',

          // AppStrings. noWorkPayment : 'لا يوجد مصاريف للوردية',
          AppStrings.addPayment: 'اضافة مصاريف',
          AppStrings.kindPayment: 'بند المصاريف',
          AppStrings.date: 'التاريخ',
          AppStrings.time: 'الوقت',
          AppStrings.theDay: 'اليوم',
          AppStrings.day: 'يوم',
          AppStrings.billTime: 'وقت الفاتورة',
          //reports
          AppStrings.mustChoseStartDate: 'يجب اختيار تاريخ البداية اولا',
          AppStrings.mustChoseEndDate: 'يجب اختيار تاريخ النهاية اولا',
          AppStrings.selectStartDate: 'اختيار تاريخ البداية',
          AppStrings.selectendtDate: 'اختيار تاريخ النهاية',
          AppStrings.startDate: 'تاريخ البداية',
          AppStrings.endDate: 'تاريخ النهاية',
          AppStrings.printDate: ' تاريخ الطباعة ',
          AppStrings.getData: ' حساب الفترة ',
          AppStrings.reportKind: ' نوع الحركة ',
          AppStrings.pay14: 'ضريبة القيمة المضافة 14%',
          AppStrings.totalWithPay: 'الاجمالي بالضريبة',
          AppStrings.save: 'حفظ',

          AppStrings.deleteBill: 'حذف الفاتورة',
          AppStrings.inRange: 'في الفترة',
          AppStrings.from: 'من',
          AppStrings.to: 'الى',
          //bill
          AppStrings.billStockNumper: 'رقم اذن الصرف',
          AppStrings.billStockDate: 'تاريخ اذن الصرف',
          AppStrings.billStockKind: 'نوع الاذن',
          AppStrings.billStockBackNumper: 'رقم اذن المرتجع',
          AppStrings.billStockBackDate: 'تاريخ اذن المرتجع',
          AppStrings.exChange: 'صرف خامات',
          AppStrings.exChangeBack: 'مرتجع خامات',
          AppStrings.billStock: 'اذن الصرف',
          AppStrings.billsStock: 'فواتير صرف الخامات',
          AppStrings.stockComponents: 'صرف الخامات',
          AppStrings.backBillStock: 'اذن المرتجع',
          AppStrings.billStockView: 'مراجعة اذن الصرف',
          AppStrings.backBillStockView: 'مراجعة اذن المرتجع',
          AppStrings.deleteBillStock: 'حذف الاذن',
          AppStrings.doneExchange: 'تم صرف',
          AppStrings.doneFactory: 'تم تصنيع',
          AppStrings.usedFactory: 'تم استخدام',
          AppStrings.address: 'العنوان',
          AppStrings.programName: 'برنامج إدارة المبيعات والمشتريات',
          AppStrings.address1: 'الفيوم - حي الجامعة - امام كلية خدمة اجتماعية',
          AppStrings.phoneWheels2: '01094838283',
          AppStrings.phoneWheels1: '01092937323',
          AppStrings.thanks: 'شكرا لزيارتكم',
          AppStrings.substitution: 'الاستبدال والاسترجاع',
          AppStrings.in14Days:
              'خلال 14 يوم شرط ان يكون المنتج بحالته الاصلية وبدون استخدام',
          AppStrings.in30Days: 'وخلال 30 يوم اذا شاب المنتج عيب',
          AppStrings.priceWithDareba: 'السعر شامل الضريبة',
          AppStrings.facebookLink: 'www.facebook.com/amg-laser',
          // billsinitems\delete.php
          AppStrings.emptyList: 'القائمة فارغة',
          AppStrings.emptyListInRange: 'القائمة فارغة في الفترة المحددة',
          AppStrings.noBillsInToday: 'لم يتم تسجيل مشتريات لليوم المحدد',
          AppStrings.noBillsOutToday: 'لم يتم تسجيل مبيعات لليوم المحدد',
          AppStrings.noBillsStockToday: 'لم يتم تسجيل اذونات لليوم المحدد',
          AppStrings.noBillsShortageToday: 'لم يتم تسجيل تسوية لليوم المحدد',
          AppStrings.noBillsFactoryToday: 'لم يتم تسجيل تصنيع لليوم المحدد',
          AppStrings.deleteAll: 'حذف الكل',
          AppStrings.delete: 'حذف',
          AppStrings.deleteConfirm: 'DELETE',
          AppStrings.print: 'طباعة',
          AppStrings.barCode: 'Bar Code',
          AppStrings.confirm: 'تاكيد',
          AppStrings.pleaseWriteTheHint: 'برجاء كتابة الكلمة',
          AppStrings.cancel: 'الغاء',
          AppStrings.theNumber: 'العدد',
          AppStrings.bill: 'فاتورة',
          AppStrings.bills: 'الفواتير',
          AppStrings.theBill: 'الفاتورة',
          AppStrings.code: 'الكود',
          AppStrings.email: 'Email',
          AppStrings.agentName: 'اسم العميل',
          AppStrings.agentPhone: 'رقم العميل',
          //for validation
          AppStrings.choseSup: 'يجب اختيار مورد على الاقل',
          AppStrings.choseAgent: 'يجب اختيار العميل',
          AppStrings.choseCateoty: 'يجب اختيار التصنيف',
          AppStrings.notValidInput: 'القيمة المدخلة غير صالحة',
          AppStrings.problem: 'يوجد مشكلة',
          AppStrings.errorMessage: 'رسالة خطأ',
          AppStrings.total: 'الاجمالي',
          AppStrings.fullTotal: 'الاجمالي النهائي',
          AppStrings.safy: 'الصافي',
          AppStrings.profile: 'الملف الشخصي',
          AppStrings.logOut: 'تسجيل الخروج',
          AppStrings.sucLogIn: 'تم تسجيل الدخول بنجاح',
          AppStrings.wrongPassword: 'كلمة المرور خاطئة',
          AppStrings.userNotFound: 'المستخدم غير موجود',
          AppStrings.userFound: 'المستخدم موجود',
          AppStrings.allItems: 'كل العناصر',
          AppStrings.cartone: 'كرتونة',
          AppStrings.pice: 'قطعة',
          AppStrings.rabta: 'ربطة',
          AppStrings.kgm: 'كجم',
          AppStrings.gm: 'جم',
          AppStrings.tn: 'طن',
          AppStrings.dasta: 'دستة',
          AppStrings.hour: 'ساعة',
          AppStrings.used: 'مستعمل',
          AppStrings.halfNew: 'كسر زيرو',
          AppStrings.itemName: 'اسم المنتج',
          AppStrings.name: 'الاسم',
          AppStrings.itemNum: 'رقم المنتج',
          AppStrings.itemSet: 'Set',
          AppStrings.thePrice: 'السعر',
          AppStrings.itemPriceIn: 'سعر الشراء',
          AppStrings.itemPriceOut: 'سعر البيع',
          AppStrings.itemPriceOutOne: 'سعر البيع القطاعي',
          AppStrings.itemPriceOutMuch: 'سعر البيع الجملة',
          AppStrings.priceOutOne: 'قطاعي',
          AppStrings.priceOutMuch: 'جملة',
          AppStrings.manufactringTime: 'مدة التصنيع',
          AppStrings.wight: 'الوزن',
          AppStrings.min: 'الحد الادنى',
          AppStrings.max: 'الحد الاقصى',
          AppStrings.color: 'اللون',
          AppStrings.size: 'المقاس',
          AppStrings.itemCat: 'التصنيف',
          AppStrings.startedQuant: 'الكمية المبدئية',
          AppStrings.packageKind: 'نوع الباكدج',
          AppStrings.itemKind: 'نوع الصنف',
          AppStrings.condition: 'الحالة',
          AppStrings.numberOfPices: 'عدد القطع',
          AppStrings.avilableQuantity: 'الكمية المتاحة',
          AppStrings.numberOfPrint: 'عدد النسخ',
          AppStrings.itemQuantity: 'الكمية',
          AppStrings.emptyQuantity: 'نفذت الكمية',
          AppStrings.allIsBack: 'تم عمل مرتجع',
          AppStrings.done: 'تم بنجاح',
          AppStrings.sucRespone: 'success',
          AppStrings.fail: 'العملية فشلت',
          AppStrings.found: 'العنصر موجود',
          AppStrings.notFound: 'لا يوجد',

          //users
          AppStrings.settings: 'الاعدادات',
          AppStrings.add: 'اضافة',
          AppStrings.users: 'الاعضاء',
          AppStrings.addUser: 'اضافة مستخدم',
          AppStrings.editUsers: 'تعديل الاعضاء',
          AppStrings.editUser: 'تعديل المستخدم',
          AppStrings.deleteUser: 'حذف المستخدم',
          AppStrings.userName: 'اسم المستخدم',
          AppStrings.password: 'كلمة المرور',
          AppStrings.primison: 'الصلاحيات',
          AppStrings.allPrimisons: 'كل الصلاحيات',
          AppStrings.ipAddress: 'ip Address',
          AppStrings.manger: 'مدير',
          AppStrings.employ: 'موظف',
          AppStrings.worker: 'عامل',
          AppStrings.noPrimsion: 'بدون صلاحيات',
          AppStrings.mustChoseprimison: 'يجب اختيار الصلاحيات',
          AppStrings.designer: 'مصمم جرافك',
          AppStrings.mangerHelper: 'مدير مساعد',
          AppStrings.hr: 'الموارد البشرية',
          AppStrings.employers: 'الموظفين',
          AppStrings.employersList: 'كشف الموظفين',
          AppStrings.saleries: 'المرتبات',
          AppStrings.addEmp: 'اضافة موظف',
          AppStrings.theNum: 'الرقم',
          AppStrings.empNum: 'رقم الموظف',
          AppStrings.editEmp: 'تعديل بيانات الموظف',
          AppStrings.edit: 'تعديل',
          AppStrings.deleteEmp: 'حذف الموظف',
          AppStrings.searchByEmp: 'البحث باسماء الموظفين اواي بيانات متعلقة',
          AppStrings.search: 'البحث...',
          AppStrings.theShop: 'المحل',
          AppStrings.attendAndExit: 'الحضور والانصراف',
          AppStrings.attendAndExitLog: 'سجلات الحضور والانصراف',
          AppStrings.attendAndExitForOneEmp: 'الحضور والانصراف لموظف',
          AppStrings.attendAndExitCurrentMonth: 'الحضور والانصراف الشهر الحالي',
          AppStrings.empName: 'اسم الموظف',
          AppStrings.jopTitle: 'الوظيفة',
          AppStrings.stillInJop: 'لم بترك العمل',
          AppStrings.saler: 'بائع',
          AppStrings.workerEmp: 'مسئول صيانة',
          AppStrings.supManger: 'مشرف',
          AppStrings.cashier: 'كاشير',
          AppStrings.empTel: 'رقم التلفون',
          AppStrings.empNationalId: 'الرقم القومي',
          AppStrings.empSalery: 'المرتب',
          AppStrings.empFinalSalery: 'صافي المرتب',
          AppStrings.empNumperOfHours: 'عدد ساعات العمل',
          AppStrings.numperOfHours: 'عدد الساعات',
          AppStrings.hourPrice: 'سعر الساعة ',
          AppStrings.numperOfDays: 'عدد الايام',
          AppStrings.empTimeWork: 'وقت العمل',
          AppStrings.dateOfBirth: 'تاريخ الميلاد',
          AppStrings.mustChosedateOfBirth: 'يجب اختيار تاريخ الميلاد',
          AppStrings.mustChosejop: 'يجب اختيار الوظيفة',
          AppStrings.mustChosedateOfStartWork: ' يجب اختيار تاريخ بداية العمل',
          AppStrings.empIsStopped: 'الموظف ترك العمل',
          AppStrings.dateOfStartWork: 'تاريخ بداية العمل',
          AppStrings.dateOfEndtWork: 'تاريخ نهاية العمل',
          AppStrings.alreadyAttend: 'تم تسجيل الحضور اليوم',
          AppStrings.alreadyExit: 'تم تسجيل الانصراف اليوم',
          AppStrings.prepareAttend: 'تجهيز الحضور',
          AppStrings.closeAttend: 'تقفيل الحضور',
          AppStrings.attend: 'حضور',
          AppStrings.logs: 'السجلات',
          AppStrings.log: 'السجل',
          AppStrings.noAttendForToday: 'لم يتم تسجيل حضور',
          AppStrings.noExitForToday: 'لم يتم تسجيل انصراف',
          AppStrings.attendTime: 'وقت الحضور',
          AppStrings.exitTime: 'وقت الانصراف',
          AppStrings.didNotGo: 'في العمل',
          AppStrings.exit: 'انصراف',
          AppStrings.other: 'غير ذلك',
          AppStrings.holiday: 'اجازة',
          AppStrings.absence: 'غياب',
          AppStrings.discount: 'خصم',
          AppStrings.delivry: 'مصاريف الشحن',
          AppStrings.discountModel: 'نظام الخصم',
          AppStrings.discounts: 'الخصومات',
          AppStrings.totalAfterDiscount: 'الاجمالي بعد الخصم',
          AppStrings.bouns: 'حافز',
          AppStrings.rest: 'اذن',
          AppStrings.notes: 'ملاحظات',
          AppStrings.payment: 'سلفة',
          AppStrings.com: 'المبلغ',
          AppStrings.theValue: 'القيمة',
          AppStrings.subject: 'البيان',
          AppStrings.noHoliday: 'لايوجد اجازة',
          AppStrings.noAbsence: 'لايوجد غياب',
          AppStrings.noDiscount: 'لايوجد خصم',
          AppStrings.noRest: 'لايوجد اذن',
          AppStrings.empAddBouns: 'اضافة حافز المبلغ بالجنهات',
          AppStrings.empAddRest: 'اضافة اذن المدة بالدقائق',
          AppStrings.empAddPayment: 'اضافة سلفة المبلغ بالجنهات',
          AppStrings.empAddDiscount: 'عمل خصم المبلغ بالجنهات',
          AppStrings.empAddNotes: 'اضافة ملاحظات',
          AppStrings.theLog: 'سجل الحضور والانصراف',
          AppStrings.forDay: 'ليوم',
          AppStrings.month: 'شهر',
          AppStrings.numberOfMonthDays: 'عدد ايام الشهر',
          AppStrings.numberOfDays: 'عدد ايام',
          AppStrings.numberOfHolidayDays: 'عدد ايام الاجازات',
          AppStrings.numberOfAbsenceDays: 'عدد ايام الغياب',
          AppStrings.numberOfAttendDays: 'عدد ايام الحضور',
          AppStrings.attendTimeTotal: 'اجمالي مدة العمل',
          AppStrings.discountTotal: 'اجمالي الخصم',
          AppStrings.bounsTotal: 'اجمالي الحوافز',
          AppStrings.restTotal: 'اجمالي مدة الاذن',
          AppStrings.paymentTotal: 'اجمالي السلف',
          AppStrings.forMonth: 'لشهر',
          AppStrings.year: 'سنة',
          AppStrings.safe: 'الخزنة',
          AppStrings.toHim: 'ليه',
          AppStrings.zeroAccount: 'الحساب خالص',
          AppStrings.upHim: 'عليه',
          AppStrings.supAccounts: 'حسابات الموردين',
          AppStrings.agentAccounts: 'حسابات العملاء',
          AppStrings.accounts: 'الحسابات',
          AppStrings.oldAccount: 'الرصيد السابق',
          AppStrings.currentAccount: 'الرصيد الحالي',
          AppStrings.account: 'الرصيد',
          AppStrings.currentSafeAccount: 'رصيد الخزنة الحالي',
          AppStrings.newAccount: 'الحساب الجديد',
          AppStrings.cashNotEnugh: 'المبلغ المتاح اقل من المبلغ المدفوع',
          AppStrings.paymentMethod: 'وسيلة الدفع',
          // bill safe
          AppStrings.safeReports: 'تقارير الخزنة',
          AppStrings.billSafe: 'فاتورة الخزنة',
          AppStrings.addSafePlus: 'فاتورة ايداع',
          AppStrings.addSafeMinus: 'فاتورة سحب',
          AppStrings.addSafeFromOut: 'فاتورة تمويل',
          AppStrings.visaMethod: 'فيزا',
          AppStrings.checkMethod: 'شيك',
        },
      };
}

class AppStrings {
//***************************keys fo shared pref***************************
//
//***************************users
  //logedin or confirmed code
  static const String keyUserPhone = 'keyUserPhone';
  static const String keyUserEmail = 'keyUserEmail';
  static const String keyUserPassword = 'keyUserPassword';
  //sigup
  static const String keyEmailPasswordReset = 'keyEmailPasswordReset';
  static const String keyEmailValidate = 'keySignUpEmail';
  static const String keySerialGenrate = 'keySerialGenrate';
  static const String keySerialEnterd = 'keySerialEnterd';
  static const String keyIpAddress = 'keyIpAddress';
  static const String adminKey = 'adminKey';
  static const String keyUserName = 'keyUserName';
  static const String keyUserId = 'keyUserId';
//***************************Meals
  static const String keyMealsTitle = 'keyMealsTitle';
  static const String keyMealsContent = 'keyMealsContent';
  static const String keyNotFirst = 'keyNotFirst';
  static const String keyNotFirstGiude = 'keyNotFirstGiude';

//***************************validation
  static const String validateUserName = 'name';
  static const String validateEmail = 'email';
  static const String validatePhone = 'phone';
  static const String validatePassword = 'password';
  static const String validateAdmin = 'admin';
  static const String validateAdminNum = 'adminNum';
  //Code
  static const String arabicCode = 'ar';
  static const String englishCode = 'en';
  static const String language = 'اللغة';
  static const String eg = 'ج.م ';

//validation
  static const String notValidUserName = 'not valid user name';
  static const String notValidEmail = 'not valid email';
  static const String notValidPhone = 'not valid phone';
  static const String cantBeEmpty = 'Can\'t be empty';
  static const String cantBeMore = 'Can\'t be more than';
  static const String cantBeLess = 'Can\'t be less than';
  // static const String notValidPhone = 'القيمة المدخلة غير صالحة';
  // static const String cantBeEmpty = 'لا يمكن ان تكون فارغة';
  // static const String cantBeMore = 'لا يمكن ان تكون اكثر من';
  // static const String cantBeLess = 'لا يمكن ان تكون اقل من';
  static const String yes = 'نعم';
  static const String no = 'لا';
  static const String items = 'الاصناف';
  static const String showItems = 'عرض الاصناف';
  static const String sup = 'الموردين';
  static const String deprtment = 'الاقسام';
  static const String paymentMethod = 'وسيلة الدفع';
  static const String visaMethod = 'فيزا';
  static const String checkMethod = 'شيك';
  static const String cashMethod = 'كاش';

  //main screen
  static const String header = 'header';
  static const String body = 'body';
  static const String bottom = 'bottom';
  static const String welcome = 'اهلا ومرحبا بكم';
  static const String mainScreen = 'الصفحة الرئيسية';
  static const String goBack = 'الرجوع';
  static const String idNumber = 'الرقم التعريفي';
  static const String stockBills = 'فواتير المخزن';
  static const String stockReports = 'تقارير المخزن';
  static const String shortage = 'عجز';
  static const String stockMax = 'زيادات المخزن';
  static const String notFoundItems = 'الاصناف الغير متوفرة';
  static const String currentItems = 'الاصناف المتوفرة';
  static const String stockMin = 'نواقص المخزن';
  static const String opreation = 'العملية';
  static const String stockCheck = 'جرد المخزن';
  static const String orderdQuantityNotFound = 'الكمية المطلوبة غير متاحة';
  static const String numberOfitems = 'عدد الاصناف';
  static const String numberOfLights = 'عدد اللمبات';
  static const String numberOfSaleditems = 'عدد الاصناف المباعة';
  static const String addItems = 'اضافة صنف';
  static const String deleteItem = 'حذف الصنف';
  static const String editItem = 'تعديل الصنف';
  static const String editItems = 'تعديل الاصناف';
  static const String noitemsEdited = 'لا يوجد تعديلات';
  static const String alreadyIn = 'المنتج مضاف حدد الكمية';
  static const String agents = 'العملاء';
  static const String addSup = 'اضافة مورد';
  static const String addAgent = 'اضافة عميل';
  static const String addDetails = 'تفاصيل العميل';
  static const String place = 'المكان';
  static const String editSup = 'تعديل الموردين';
  static const String editAgent = 'تعديل العميل';
  static const String choeseImage = 'اختيار الصورة';
  static const String image = 'الصورة';
  static const String deleteSups = 'حذف الموردين';
  static const String deleteSup = 'حذف المورد';
  static const String supName = 'اسم المورد';
  static const String supNameFrist = 'المورد الاول';
  static const String supNameSecond = 'المورد الثاني';
  static const String supNameThird = 'المورد الثالث';
  static const String supNameForth = 'المورد الرابع';
  static const String supTel = 'رقم المورد';
  static const String tel = 'رقم الموبايل';
  static const String wts = 'رقم الواتس';
  static const String cash = 'رقم كاش';
  static const String billCash = 'كاش';
  static const String billAgel = 'اجل';
  static const String facebook = 'Facebook';
  static const String instgram = 'Instgram';
  static const String website = 'Website';
  static const String wordOfMouth = 'word of mouth';
  static const String otherDetails = 'بيانات اخرى';
  static const String pleseFullAllDetails = 'please fill all details';
  static const String youKnowUs = 'You knew us through';
  static const List genderList = [
    AppStrings.male,
    AppStrings.female,
  ];
  static const List youKnewUsList = [
    AppStrings.facebook,
    AppStrings.instgram,
    AppStrings.website,
    AppStrings.wordOfMouth,
  ];
  static const List agentAreas = [
    AppStrings.cairo,
    AppStrings.alex,
    AppStrings.giza,
    AppStrings.fym,
    AppStrings.sinai,
  ];
  static const List agesList = [
    AppStrings.age25To35,
    AppStrings.age35To45,
    AppStrings.age45To55,
    AppStrings.age55,
  ];
  static const String cairo = 'cairo';
  static const String alex = 'alex';
  static const String giza = 'Giza';
  static const String fym = 'fym';
  static const String sinai = 'Sinai';
  static const String male = 'ذكر';
  static const String female = 'انثى';
  static const String gender = 'الجنس';
  static const String age = 'العمر';
  static const String age25To35 = '25 : 35';
  static const String age35To45 = '35 : 45';
  static const String age45To55 = '45 : 55';
  static const String age55 = '+55';
  //works
  static const String workes = 'الورديات';
  static const String workesSafy = 'صافي الورديات';
  static const String workesPayment = 'مصاريف الورديات';
  static const String billKind = 'نوع الفاتورة';
  static const String cashierName = 'اسم الكاشير';
  static const String choseaCshierName = 'برجاء اختيار الكاشير';
  static const String numberOfBills = 'عدد الفواتير';
  static const String openWork = 'فتح وردية';
  static const String closeWork = 'غلق الوردية';
  static const String doneCloseWorke = 'تم غلق الوردية';
  static const String editWork = 'تعديل وردية';
  static const String salesWork = 'مبيعات الوردية';
  static const String currentCash = 'النقدية المتاحة';
  static const String currentCashNotEmpty = 'يوجد نقدية';
  static const String useCantCloseWork = 'لا يمكنك غلق الوردية';
  static const String backBillsWork = 'فواتير مرتجع الوردية';
  static const String salesBillsWork = 'فواتير مبيعات الوردية';
  static const String salesDetailsWork = 'تفاصيل مبيعات الوردية';
  static const String workDetails = 'تفاصيل الوردية';
  static const String backSalesWork = 'مرتجع مبيعات الوردية';
  static const String startWorke = 'بداية الوردية';
  static const String currentWork = 'الوردية الحالية';
  static const String noCurrentWork = 'لا يوجد وردية حالية';
  static const String currentValue = 'الحالي';
  static const String noValue = 'لا يوجد قيمة';
  static const String workNum = 'رقم الوردية';
  static const String endWorke = 'نهاية الوردية';
  static const String planName = 'اسم الخطة';
  static const String plandesc = 'وصف الخطة';
  static const String noDesc = 'لا يوجد وصف';
  static const String desc = 'الوصف';
  static const String planNumper = 'رقم الخطة';
  static const String planDay = 'خطة يوم';
  static const String plans = 'الخطط';
  static const String addPlan = 'اضافة خطة';
  static const String plansView = 'عرض الخطط';
  static const String deletePlan = 'حذف الخطة';

  //billOut
  static const String addBillOrder = 'اضافة حجز';
  static const String addDof3a = 'اضافة دفعة';
  static const String addTa7sel = 'اضافة تحصيل';
  static const String ta7sel = 'تحصيل';
  static const String dof3a = 'دفعة';
  static const String backMoney = 'استرداد مبلغ';
  static const String orders = 'الاوردرات';
  static const String tasleem = 'تسليم';
  static const String tasleeFull = 'تسليم نهائي';
  static const String billOut = 'المبيعات';
  static const String sort = 'رتب حسب';
  static const billOutSortList = [
    mostSaller,
    leastSaller,
  ];
  static const String mostSaller = 'الاكثر مبيعا';
  static const String leastSaller = 'الاقل مبيعا';
  static const String hold = 'معلق';
  static const String declined = 'رفض';
  static const String lastBills = 'اخر الطلبات';
  static const String preparing = 'جاري التجهيز';
  static const String preparingBills = 'فواتير قيد التجهيز';
  static const String ready = 'تم التنفيذ';
  static const String doneprepared = 'تم التجهيز';
  static const String doneDelivered = 'تم التسليم';
  static const String addBillOut = 'اضافة مبيعات';
  static const String rentBill = 'فاتورة تاجير';
  static const String fixBill = 'فاتورة صيانة';
  static const String bikeBillOut = 'فاتورة بيع دراجات';
  static const String bikeBackBillOut = 'فاتورة مرتجع دراجات';
  static const String components = 'الخامات';
  static const String componentsWanted = 'الخامات المطلوبة';
  static const String mokonat = 'المكونات';
  static const String componentsStock = 'مخزن الخامات';
  static const String usedComponents = 'الخامات المستخدمة';
  static const String wantedComponents = 'الخامات المطلوبة';
  static const String wanted = 'المطلوب';
  static const String wantedExtract = 'المطلوب تصنيعه';
  static const String avilable = 'المتاح';
  static const String prepareComponents = 'استعلام الخامات';
  static const String details = 'التفاصيل';
  static const String componentsNumber = 'عدد المكونات';
  static const String students = 'الطلاب';
  //bill factory
  static const String theFactory = 'التصنيع';
  static const String billFactory = 'فاتورة التصنيع';
  static const String billFactoryReports = 'تقارير التصنيع';
  static const String addBillProduction = 'اضافة انتاج';
  static const String addBillConsumption = 'اضافة استهلاك';
  static const String billConsumption = 'فاتورة استهلاك';
  static const String billProduction = 'فاتورة انتاج';
  static const String ingredients = 'المقادير';
  static const String courses = 'المواد';
  static const String extentions = 'الاضافات';
  static const String freeExtentions = 'الاضافات المجانية';
  static const String store = 'المعرض';
  static const String productStock = 'مخزن الليزر';
  static const String product = 'منتج';
  static const String subStock = 'المخزن الفرعي';
  static const String sub = 'الفرعي';
  static const String main = 'الرئيسي';
  static const String stockMovement = 'حركة المخزن';
  static const String cost = 'التكلفة';
  static const String productDetails = 'تفاصيل المنتج';
  static const String notFoundBikes = 'الدراجات الغير متوفرة';
  static const String currentBikes = 'الدراجات المتوفرة';
  static const String bikesSales = 'مبيعات دراجات';
  static const String bikesBackSales = 'مرتجع مبيعات دراجات';
  static const String bike = 'دراجة';
  static const String fix = 'صيانة';
  static const String paid = 'المدفوع';
  static const String pleasePrepareList = 'برجاء تجهيز الحامات';
  static const String pleaseEnterPaid = 'برجاء ادخال المبلغ المدفوع';
  static const String pleaseEnterDuration = 'برجاء ادخال مدة التنفيذ';
  static const String paidLessWanted = 'المبلغ المدفوع اقل من المطلوب';
  static const String unPaid = 'المتبقي';
  static const String backBillOut = 'مرتجع مبيعات';
  static const String billOutReports = 'تقرير المبيعات';
  static const String editBillsOut = 'تعديل فواتير المبيعات';
  static const String editBillsOutRent = 'تعديل فواتير الايجار';
  static const String editBillsOutFix = 'تعديل فواتير الصيانة';
  static const String editBackBillsOut = 'تعديل مرتجع فواتير المبيعات';
  static const String editBillOutBike = 'تعديل مبيعات دراجات';
  static const String editBackBillOutBike = 'نعديل مرتجع مبيعات دراجات';
  //bill shortage
  static const String billShortage = 'فاتورة التسوية';
  static const String billsShortage = 'فواتير التسوية';
  static const String billShortagePlus = 'تسوية الزيادة';
  static const String billShortageMinus = 'تسوية العجز';
  static const String thePlus = 'الزيادة';
  static const String theMinus = 'العجز';
  static const String attendence = 'الحضور';
  //billIn
  static const String deprtments = 'الاقسام';
  static const String adddepartment = 'اضافة قسم';
  static const String showdepartments = 'عرض الاقسام';
  static const String back = 'المرتجع';
  static const String editBillInBike = 'تعديل مشتريات دراجات';
  static const String editBackBillInBike = 'نعديل مرتجع مشتريات دراجات';
  static const String billInBike = 'مشتريات دراجات';
  static const String backBillInBike = 'مرتجع مشتريات دراجات';
  static const String billInReports = 'تقرير المشتريات';
  static const String editBillsIn = 'تعديل فواتير المشتريات';
  static const String viewTheBills = 'عرض الفواتير';
  static const String deletedepartment = 'حذف قسم';
  static const String view = 'معاينة';
  static const String editBackBillsIn = 'تعديل مرتجع فواتير المشتريات';
  static const String billNumper = 'رقم الفاتورة';
  static const String orderNumper = 'رقم الحجز';
  static const String orderNumperDone = 'رقم التسليم';
  static const String billInBackNumper = 'رقم فاتورة مرتجع المشتريات';
  static const String billOutBackNumper = 'رقم فاتورة مرتجع المبيعات';
  static const String billInNumper = 'رقم فاتورة المشتريات';
  static const String billOutNumper = 'رقم فاتورة المبيعات';
  static const String billTotal = 'اجمالي الفاتورة';
  static const String billDate = 'تاريخ الفاتورة';
  static const String editState = 'حالة التعديل';
  static const String editRequset = 'تم اضافة طلب تعديل';
  static const String acceptState = 'تم الموافقة';
  static const String declinedState = 'تم الرفض';
  static const String newState = 'جديد';
  static const String billDetails = 'بيانات الفاتورة';
  static const String billPayment = 'مصاريف';
  static const String workPayment = 'مصاريف الوردية';
  static const String pleaseEnterWantedValues =
      'برجاء ادخال القيم المطلوبة بطريقة صحيحة';
  static const String noSales = 'لا يوجد مبيعات';
  static const String analysis = 'التحليلات';
  static const String reports = 'التقارير';
  static const String reportsView = 'عرض التقارير';
  static const String monthReport = 'تقرير الشهر';
  static const String monthlSalesAnalysis = 'Monthly sales analysis';
  static const String annuallSalesAnalysis = 'Annual sales analysis';
  static const String billConsumptionNumper = 'رقم فاتورة الاستهلاك';
  static const String billProductionNumper = 'رقم فاتورة الانتاج';
  // static const String reports = 'التقارير';
  // static const String reports = 'التقارير';
  // static const String reports = 'التقارير';
  // static const String reports = 'التقارير';
  // static const String reports = 'التقارير';
  // static const String reports = 'التقارير';
  // static const String reports = 'التقارير';

  // static const String noWorkPayment = 'لا يوجد مصاريف للوردية';
  static const String addPayment = 'اضافة مصاريف';
  static const String kindPayment = 'بند المصاريف';
  static const String date = 'التاريخ';
  static const String time = 'الوقت';
  static const String duration = 'مدة التنفيذ';
  static const String theDay = 'اليوم';
  static const String day = 'يوم';
  static const String billTime = 'وقت الفاتورة';
  //reports
  static const String mustChoseStartDate = 'يجب اختيار تاريخ البداية اولا';
  static const String mustChoseEndDate = 'يجب اختيار تاريخ النهاية اولا';
  static const String selectStartDate = 'اختيار تاريخ البداية';
  static const String selectendtDate = 'اختيار تاريخ النهاية';
  static const String startDate = 'تاريخ البداية';
  static const String endDate = 'تاريخ النهاية';
  static const String printDate = ' تاريخ الطباعة ';
  static const String getData = ' حساب الفترة ';
  static const String reportKind = ' نوع الحركة ';
  static const String pay14 = 'ضريبة القيمة المضافة 14%';
  static const String totalWithPay = 'الاجمالي بالضريبة';
  static const String save = 'حفظ';

  static const String deleteBill = 'حذف الفاتورة';
  static const String inRange = 'في الفترة';
  static const String from = 'من';
  static const String to = 'الى';
  //bill
  static const String billStockNumper = 'رقم اذن الصرف';
  static const String billStockDate = 'تاريخ اذن الصرف';
  static const String billStockKind = 'نوع الاذن';
  static const String billStockBackNumper = 'رقم اذن المرتجع';
  static const String billStockBackDate = 'تاريخ اذن المرتجع';
  static const String exChange = 'صرف خامات';
  static const String exChangeBack = 'مرتجع خامات';
  static const String billStock = 'اذن الصرف';
  static const String billsStock = 'فواتير صرف الخامات';
  static const String stockComponents = 'صرف الخامات';
  static const String backBillStock = 'اذن المرتجع';
  static const String billStockView = 'مراجعة اذن الصرف';
  static const String backBillStockView = 'مراجعة اذن المرتجع';
  static const String deleteBillStock = 'حذف الاذن';
  static const String doneExchange = 'تم صرف';
  static const String doneFactory = 'تم تصنيع';
  static const String usedFactory = 'تم استخدام';
  static const String address = 'العنوان';
  static const String area = 'المنطقة';
  static const String programName = 'برنامج إدارة المبيعات والمشتريات';
  static const String hossamName = 'حسام مجدي';
  static const String hossaPhone = '01009800306';

  // static const String addressWheels =
  //     'الفيوم - برج التطبيقين خلف نادي المحافظه - بجوار كافيه بنت السلطان';
  static const String address1 =
      'الفيوم - حي الجامعة - امام كلية خدمة اجتماعية';
  static const String phoneWheels2 = '01094838283';
  static const String phoneWheels1 = '01092937323';
  static const String thanks = 'شكرا لزيارتكم';
  static const String substitution = 'الاستبدال والاسترجاع';
  static const String in14Days =
      'خلال 14 يوم شرط ان يكون المنتج بحالته الاصلية وبدون استخدام';
  static const String in30Days = 'وخلال 30 يوم اذا شاب المنتج عيب';
  static const String changeBike1 =
      'ضمان الدراجات الجديدة ماركة جلاكسي او ترينكس';
  static const String changeBike2 =
      '5 سنوات علي الكدر ، 3 أشهر لقطع الغيار ، 3 أشهر إصلاح مجاني';
  // 'ضمان 3 أشهر لقطع الغيار ، 3 أشهر إصلاح مجاني';
  static const String changeBike3 = '5 سنوات ضمان علي الكدر';
  static const String priceWithDareba = 'السعر شامل الضريبة';
  static const String facebookLink = 'www.facebook.com/amg-laser';
  // billsinitems\delete.php
  static const String emptyList = 'القائمة فارغة';
  static const String emptyListInRange = 'القائمة فارغة في الفترة المحددة';
  static const String noBillsInToday = 'لم يتم تسجيل مشتريات لليوم المحدد';
  static const String noBillsOutToday = 'لم يتم تسجيل مبيعات لليوم المحدد';
  static const String noBillsStockToday = 'لم يتم تسجيل اذونات لليوم المحدد';
  static const String noBillsShortageToday = 'لم يتم تسجيل تسوية لليوم المحدد';
  static const String noBillsFactoryToday = 'لم يتم تسجيل تصنيع لليوم المحدد';
  static const String deleteAll = 'حذف الكل';
  static const String delete = 'حذف';
  static const String deleteConfirm = 'DELETE';
  static const String print = 'طباعة';
  static const String barCode = 'Bar Code';
  static const String confirm = 'تاكيد';
  static const String pleaseWriteTheHint = 'برجاء كتابة الكلمة';
  static const String cancel = 'الغاء';
  static const String cancelHint = 'CANCEL';
  static const String confirmHint = 'CONFIRM';
  static const String theNumber = 'العدد';
  static const String bill = 'فاتورة';
  static const String bills = 'الفواتير';
  static const String theBill = 'الفاتورة';
  static const String code = 'الكود';
  static const String email = 'Email';
  static const String fName = 'الاسم الاول';
  static const String lName = 'الاسم الاخير';
  static const String agentName = 'اسم العميل';
  static const String agentPhone = 'رقم العميل';
  //for validation
  static const String choseSup = 'يجب اختيار مورد على الاقل';
  static const String choseAgent = 'يجب اختيار العميل';
  static const String choseCateoty = 'يجب اختيار التصنيف';
  static const String notValidInput = 'القيمة المدخلة غير صالحة';
  static const String problem = 'يوجد مشكلة';
  static const String errorMessage = 'رسالة خطأ';
  static const String total = 'الاجمالي';
  static const String fullTotal = 'الاجمالي النهائي';
  static const String safy = 'الصافي';
  static const String profile = 'الملف الشخصي';
  static const String logOut = 'تسجيل الخروج';
  static const String logIn = 'تسجيل الدخول';
  static const String sucLogIn = 'تم تسجيل الدخول بنجاح';
  static const String wrongPassword = 'كلمة المرور خاطئة';
  static const String userNotFound = 'المستخدم غير موجود';
  static const String userFound = 'المستخدم موجود';
  //add item
  static const List<String> packageList = [cartone, pice, rabta, dasta];
  static const List<String> itemsKindList = [
    components,
    courses,
  ];
  static const List<String> billInkindList = [deprtment, components];

  static const List<String> stockSearchList = [
    stockMin,
    stockMax,
    notFoundItems,
    currentItems,
  ];

  static const List<String> rentList = [month, day, hour];
  static const String allItems = 'كل العناصر';
  static const String cartone = 'كرتونة';
  static const String pice = 'قطعة';
  static const String rabta = 'ربطة';
  static const String kgm = 'كجم';
  static const String gm = 'جم';
  static const String tn = 'طن';
  static const String dasta = 'دستة';
  static const String hour = 'ساعة';
  static const String newBike = 'جديد';
  static const String used = 'مستعمل';
  static const String halfNew = 'كسر زيرو';
  static const String itemName = 'اسم المنتج';
  static const String name = 'الاسم';
  static const String itemNum = 'رقم المنتج';
  static const String itemSet = 'Set';
  static const String active = 'active';
  static const String wat = 'wat';
  static const String thePrice = 'السعر';
  static const String itemPriceIn = 'سعر الشراء';
  static const String itemPriceOut = 'سعر البيع';
  static const String itemPriceOutOne = 'سعر البيع القطاعي';
  static const String itemPriceOutMuch = 'سعر البيع الجملة';
  static const String priceOutOne = 'قطاعي';
  static const String priceOutMuch = 'جملة';
  static const String manufactringTime = 'مدة التصنيع';
  static const String wight = 'الوزن';
  static const String min = 'الحد الادنى';
  static const String max = 'الحد الاقصى';
  static const String color = 'اللون';
  static const String size = 'المقاس';
  static const String itemCat = 'التصنيف';
  static const String startedQuant = 'الكمية المبدئية';
  static const String packageKind = 'نوع الباكدج';
  static const String itemKind = 'نوع الصنف';
  static const String bikeKind = 'ماركة';
  static const String bikeModel = 'موديل';
  static const String bikeColor = 'اللون';
  static const String condition = 'الحالة';
  static const String choeseBikeCondition = 'برجاء اختيار حالة الدراجة';

  static const String numberOfPices = 'عدد القطع';
  static const String avilableQuantity = 'الكمية المتاحة';
  static const String numberOfPrint = 'عدد النسخ';

  static const String itemSup = 'اسم المورد';
  static const String itemQuantity = 'الكمية';
  static const String emptyQuantity = 'نفذت الكمية';
  static const String allIsBack = 'تم عمل مرتجع';
  static const String done = 'تم بنجاح';
  static const String sucRespone = 'success';
  static const String fail = 'العملية فشلت';
  static const String found = 'العنصر موجود';
  static const String notFound = 'لا يوجد';
  static const String doneSendEdit = 'تم بنجاح';
  //users
  static const List primsions = [manger, supManger, employ, noPrimsion];
  static const String settings = 'الاعدادات';
  static const String add = 'اضافة';
  static const String users = 'الاعضاء';
  static const String addUser = 'اضافة مستخدم';
  static const String editUsers = 'تعديل الاعضاء';
  static const String editUser = 'تعديل المستخدم';
  static const String deleteUser = 'حذف المستخدم';
  static const String userName = 'اسم المستخدم';
  static const String password = 'كلمة المرور';
  static const String primison = 'الصلاحيات';
  static const String allPrimisons = 'كل الصلاحيات';
  static const String ipAddress = 'ip Address';
  static const String manger = 'مدير';
  static const String employ = 'موظف';
  static const String worker = 'عامل';
  static const String noPrimsion = 'بدون صلاحيات';
  static const String mustChoseprimison = 'يجب اختيار الصلاحيات';
  static const String designer = 'مصمم جرافك';
  static const String mangerHelper = 'مدير مساعد';

// employers
  static const List<String> jopsList = [
    AppStrings.manger,
    AppStrings.mangerHelper,
    AppStrings.supManger,
    AppStrings.designer,
    AppStrings.cashier,
    AppStrings.saler,
    AppStrings.workerEmp,
    AppStrings.worker,
  ];
  static const String hr = 'الموارد البشرية';
  static const String employers = 'الموظفين';
  static const String employersList = 'كشف الموظفين';
  static const String saleries = 'المرتبات';
  static const String addEmp = 'اضافة موظف';
  static const String theNum = 'الرقم';
  static const String empNum = 'رقم الموظف';
  static const String editEmp = 'تعديل بيانات الموظف';
  static const String edit = 'تعديل';
  static const String deleteEmp = 'حذف الموظف';
  static const String searchByEmp = 'البحث باسماء الموظفين اواي بيانات متعلقة';
  static const String search = 'البحث...';
  static const String theShop = 'المحل';
  static const String attendAndExit = 'الحضور والانصراف';
  static const String attendAndExitLog = 'سجلات الحضور والانصراف';
  static const String attendAndExitForOneEmp = 'الحضور والانصراف لموظف';
  static const String attendAndExitCurrentMonth =
      'الحضور والانصراف الشهر الحالي';
  static const String empName = 'اسم الموظف';
  static const String jopTitle = 'الوظيفة';
  static const String stillInJop = 'لم بترك العمل';
  static const String saler = 'بائع';
  static const String workerEmp = 'مسئول صيانة';
  static const String supManger = 'مشرف';
  static const String cashier = 'كاشير';
  static const String empTel = 'رقم التلفون';
  static const String empWts = 'رقم الواتس';
  static const String empNationalId = 'الرقم القومي';
  static const String empSalery = 'المرتب';
  static const String theDetails = 'التفاصيل';
  static const String empFinalSalery = 'صافي المرتب';
  static const String empNumperOfHours = 'عدد ساعات العمل';
  static const String numperOfHours = 'عدد الساعات';
  static const String hourPrice = 'سعر الساعة ';
  static const String numperOfDays = 'عدد الايام';
  static const String empTimeWork = 'وقت العمل';
  static const String empAddress = 'العنوان';
  static const String dateOfBirth = 'تاريخ الميلاد';
  static const String mustChosedateOfBirth = 'يجب اختيار تاريخ الميلاد';
  static const String mustChosejop = 'يجب اختيار الوظيفة';
  static const String mustPayAtLeast = 'يجب على الاقل دفع';
  static const String mustChosedateOfStartWork =
      ' يجب اختيار تاريخ بداية العمل';
  static const String empIsStopped = 'الموظف ترك العمل';
  static const String dateOfStartWork = 'تاريخ بداية العمل';
  static const String dateOfEndtWork = 'تاريخ نهاية العمل';
  static const String alreadyAttend = 'تم تسجيل الحضور اليوم';
  static const String alreadyExit = 'تم تسجيل الانصراف اليوم';
  static const String prepareAttend = 'تجهيز الحضور';
  static const String closeAttend = 'تقفيل الحضور';
  static const String attend = 'حضور';
  static const String logs = 'السجلات';
  static const String log = 'السجل';
  static const String noAttendForToday = 'لم يتم تسجيل حضور';
  static const String noExitForToday = 'لم يتم تسجيل انصراف';
  static const String attendTime = 'وقت الحضور';
  static const String exitTime = 'وقت الانصراف';
  static const String didNotGo = 'في العمل';
  static const String exit = 'انصراف';
  static const String other = 'غير ذلك';
  static const String holiday = 'اجازة';
  static const String absence = 'غياب';
  static const String discount = 'خصم';
  static const String add14 = 'ضريبة القيمة المضافة 14%';
  static const String upstreamDiscount = 'خصم من المنبع 1%';
  static const String delivry = 'مصاريف الشحن';
  static const String installationExpenses = 'مصاريف التركيب';
  static const String discountModel = 'نظام الخصم';
  static const String discounts = 'الخصومات';
  static const String totalAfterDiscount = 'الاجمالي بعد الخصم';
  static const String bouns = 'حافز';
  static const String rest = 'اذن';
  static const String notes = 'ملاحظات';
  static const String payment = 'سلفة';
  static const String payments = 'مصاريف';
  static const String com = 'المبلغ';
  static const String theValue = 'القيمة';
  static const String subject = 'البيان';
  static const String noHoliday = 'لايوجد اجازة';
  static const String noAbsence = 'لايوجد غياب';
  static const String noDiscount = 'لايوجد خصم';
  static const String noRest = 'لايوجد اذن';
  static const String empAddBouns = 'اضافة حافز المبلغ بالجنهات';
  static const String empAddRest = 'اضافة اذن المدة بالدقائق';
  static const String empAddPayment = 'اضافة سلفة المبلغ بالجنهات';
  static const String empAddDiscount = 'عمل خصم المبلغ بالجنهات';
  static const String expect = 'خصم';
  static const String empAddNotes = 'اضافة ملاحظات';
  static const String theLog = 'سجل الحضور والانصراف';
  static const String forDay = 'ليوم';
  static const String month = 'شهر';
  static const String numberOfMonthDays = 'عدد ايام الشهر';
  static const String numberOfDays = 'عدد ايام';
  static const String numberOfHolidayDays = 'عدد ايام الاجازات';
  static const String numberOfAbsenceDays = 'عدد ايام الغياب';
  static const String numberOfAttendDays = 'عدد ايام الحضور';
  static const String attendTimeTotal = 'اجمالي مدة العمل';
  static const String discountTotal = 'اجمالي الخصم';
  static const String bounsTotal = 'اجمالي الحوافز';
  static const String restTotal = 'اجمالي مدة الاذن';
  static const String paymentTotal = 'اجمالي السلف';
  static const String forMonth = 'لشهر';
  static const String year = 'سنة';
  static const String yearly = 'سنوي';
  static const String monthly = 'شهري';
  static const String safe = 'الخزنة';
  static const String toHim = 'ليه';
  static const String zeroAccount = 'الحساب خالص';
  static const String upHim = 'عليه';
  static const String supAccounts = 'حسابات الموردين';
  static const String agentAccounts = 'حسابات العملاء';
  static const String accounts = 'الحسابات';
  static const String oldAccount = 'الرصيد السابق';
  static const String currentAccount = 'الرصيد الحالي';
  static const String account = 'الرصيد';
  static const String currentSafeAccount = 'رصيد الخزنة الحالي';
  static const String newAccount = 'الحساب الجديد';
  static const String cashNotEnugh = 'المبلغ المتاح اقل من المبلغ المدفوع';
  static const String pleaseEnterCash = 'برجاء ادخال المبلغ المدفوع';
  // bill safe
  static const String safeReports = 'تقارير الخزنة';
  static const String billSafe = 'فاتورة الخزنة';
  static const String addSafePlus = 'فاتورة ايداع';
  static const String addSafeMinus = 'فاتورة سحب';
  static const String addSafeFromOut = 'فاتورة تمويل';

  // the accounts
  // static const String accounts = 'الرصيد';

  static const String editdepartment = 'تعديل قسم';
  static const String editcourse = 'تعديل مادة';
  static const String addcourse = 'اضافة مادة';
  static const String deletcourse = 'حذف مادة';
  static const String showcourses = 'عرض المواد';

  static const String studentName = 'اسم الطالب';
  static const String editstudent = 'تعديل طالب';
  static const String addstudent = 'اضافة طالب';
  static const String deletstudent = 'حذف طالب';
  static const String showstudents = 'عرض الطلاب';
  static const String numberOfStudent = 'عدد الطلاب';
  static const String timeTable = "الجدول";
  static const String mangerID = 'رقم المدير';
  static const String mangerName = 'اسم المدير';
}
