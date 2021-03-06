﻿&НаКлиенте
Процедура Загрузить( Команда )
	
	ОчиститьСообщения();
	
	ОписаниеОповещения = Новый ОписаниеОповещения( "ЗагрузитьДанныеЗавершение", ЭтотОбъект );
	НачатьПомещениеФайла( ОписаниеОповещения,
						  Адрес,
						  Нстр( "ru = 'Файл выгрузки'" ),
						  Истина,
						  УникальныйИдентификатор );
	
КонецПроцедуры

&НаКлиенте
Процедура ЗагрузитьДанныеЗавершение( Результат, пАдрес, ВыбранноеИмяФайла, ДополнительныеПараметры ) Экспорт
	
	Если Результат Тогда
		
		Состояние( Нстр( "ru = 'Выполняется загрузка данных. Пожалуйста, подождите...'" ) );
		
		Адрес = пАдрес;
		
		Объект.ДатаЗагрузки = ТекущаяДата();
		
		выбранныйФайл = Новый Файл( ВыбранноеИмяФайла );
		
		Объект.Наименование = выбранныйФайл.Имя;
		
	Иначе
		
		Адрес = "";
		
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Процедура ПередЗаписьюНаСервере( Отказ, ТекущийОбъект, ПараметрыЗаписи )
	
	Если Не Адрес = "" Тогда
		
		ТекущийОбъект.хзДвоичныеДанные = Новый ХранилищеЗначения( ПолучитьИзВременногоХранилища( Адрес ) );
		
	КонецЕсли;
	
КонецПроцедуры


