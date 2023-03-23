#Использовать autumn
#Использовать asserts
#Использовать ".."
#Использовать "."

Функция ПолучитьПоделку()
	Поделка = Новый Поделка();
	Поделка
		.ДобавитьЖелудь(Тип("ТестовыйЖелудь"))
		.ЗапуститьПриложение();
	
	Возврат Поделка;
КонецФункции

&Тест
Процедура ПроверкаМассива() Экспорт

	// Дано 
	Поделка = ПолучитьПоделку();

	// Когда
	ТестовыйЖелудь = Поделка.НайтиЖелудь("ТестовыйЖелудь");

	// Тогда
	Ожидаем.Что(ТестовыйЖелудь.ПустойМассив).ИмеетТип("Массив");
	Ожидаем.Что(ТестовыйЖелудь.ПустойМассив.Количество()).Равно(0);

	Ожидаем.Что(ТестовыйЖелудь.МассивСРазмером1).ИмеетТип("Массив");
	Ожидаем.Что(ТестовыйЖелудь.МассивСРазмером1.Количество()).Равно(1);

	Ожидаем.Что(ТестовыйЖелудь.ЗаполненныйМассив).ИмеетТип("Массив");
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненныйМассив.Количество()).Равно(2);
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненныйМассив[0]).Равно("а");
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненныйМассив[1]).Равно(1);

	Ожидаем.Что(ТестовыйЖелудь.ФиксированныйМассив).ИмеетТип("ФиксированныйМассив");
	Ожидаем.Что(ТестовыйЖелудь.ФиксированныйМассив.Количество()).Равно(1);
	Ожидаем.Что(ТестовыйЖелудь.ФиксированныйМассив[0]).Равно(1);

КонецПроцедуры

&Тест
Процедура ПроверкаСоответствие() Экспорт

	// Дано 
	Поделка = ПолучитьПоделку();

	// Когда
	ТестовыйЖелудь = Поделка.НайтиЖелудь("ТестовыйЖелудь");

	// Тогда
	Ожидаем.Что(ТестовыйЖелудь.Соответствие).ИмеетТип("Соответствие");
	Ожидаем.Что(ТестовыйЖелудь.Соответствие.Количество()).Равно(0);

	Ожидаем.Что(ТестовыйЖелудь.ЗаполненноеСоответствие).ИмеетТип("Соответствие");
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненноеСоответствие.Количество()).Равно(2);
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненноеСоответствие["Ключ1"]).Равно(1);
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненноеСоответствие["Ключ2"]).Равно("2");	

	Ожидаем.Что(ТестовыйЖелудь.ФиксированноеСоответствие).ИмеетТип("ФиксированноеСоответствие");
	Ожидаем.Что(ТестовыйЖелудь.ФиксированноеСоответствие.Количество()).Равно(1);
	Ожидаем.Что(ТестовыйЖелудь.ФиксированноеСоответствие["Ключ"]).Равно(1);

КонецПроцедуры

&Тест
Процедура ПроверкаСтруктура() Экспорт

	// Дано 
	Поделка = ПолучитьПоделку();

	// Когда
	ТестовыйЖелудь = Поделка.НайтиЖелудь("ТестовыйЖелудь");

	// Тогда
	Ожидаем.Что(ТестовыйЖелудь.СтруктураСКлючами).ИмеетТип("Структура");
	Ожидаем.Что(ТестовыйЖелудь.СтруктураСКлючами.Количество()).Равно(3);

	Ожидаем.Что(ТестовыйЖелудь.СтруктураСКлючами.Свойство("Ключ1")).Равно(Истина);
	Ожидаем.Что(ТестовыйЖелудь.СтруктураСКлючами.Свойство("Ключ2")).Равно(Истина);
	Ожидаем.Что(ТестовыйЖелудь.СтруктураСКлючами.Ключ2).Равно(2);
	Ожидаем.Что(ТестовыйЖелудь.СтруктураСКлючами.Ключ3).Равно("3");

	Ожидаем.Что(ТестовыйЖелудь.ПустаяСтруктура).ИмеетТип("Структура");
	Ожидаем.Что(ТестовыйЖелудь.ПустаяСтруктура.Количество()).Равно(0);

	Ожидаем.Что(ТестовыйЖелудь.ФиксированнаяСтруктура).ИмеетТип("ФиксированнаяСтруктура");
	Ожидаем.Что(ТестовыйЖелудь.ФиксированнаяСтруктура.Количество()).Равно(1);
	Ожидаем.Что(ТестовыйЖелудь.ФиксированнаяСтруктура.Ключ).Равно(1);

КонецПроцедуры

&Тест
Процедура ПроверкаТаблицаЗначений() Экспорт

	// Дано 
	Поделка = ПолучитьПоделку();

	// Когда
	ТестовыйЖелудь = Поделка.НайтиЖелудь("ТестовыйЖелудь");

	// Тогда
	Ожидаем.Что(ТестовыйЖелудь.ТЗБезКолонок).ИмеетТип("ТаблицаЗначений");
	Ожидаем.Что(ТестовыйЖелудь.ТЗБезКолонок.Количество()).Равно(0);
	Ожидаем.Что(ТестовыйЖелудь.ТЗБезКолонок.Колонки.Количество()).Равно(0);

	Ожидаем.Что(ТестовыйЖелудь.ТЗ).ИмеетТип("ТаблицаЗначений");
	Ожидаем.Что(ТестовыйЖелудь.ТЗ.Количество()).Равно(0);
	Ожидаем.Что(ТестовыйЖелудь.ТЗ.Колонки.Количество()).Равно(3);
	Ожидаем.Что(ТестовыйЖелудь.ТЗ.Колонки[0].Имя).Равно("Колонка1");
	Ожидаем.Что(ТестовыйЖелудь.ТЗ.Колонки[1].Имя).Равно("Колонка2");
	Ожидаем.Что(ТестовыйЖелудь.ТЗ.Колонки[2].Имя).Равно("Колонка3");

	Ожидаем.Что(ТестовыйЖелудь.ЗаполненнаяТаблица).ИмеетТип("ТаблицаЗначений");
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненнаяТаблица.Количество()).Равно(2);
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненнаяТаблица.Колонки.Количество()).Равно(2);
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненнаяТаблица.Колонки[0].Имя).Равно("ДеньНедели");
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненнаяТаблица.Колонки[1].Имя).Равно("НомерДня");

	Ожидаем.Что(ТестовыйЖелудь.ЗаполненнаяТаблица[0].ДеньНедели).Равно("Понедельник");
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненнаяТаблица[0].НомерДня).Равно(1);

	Ожидаем.Что(ТестовыйЖелудь.ЗаполненнаяТаблица[1].ДеньНедели).Равно("Вторник");
	Ожидаем.Что(ТестовыйЖелудь.ЗаполненнаяТаблица[1].НомерДня).Равно(2);

КонецПроцедуры
