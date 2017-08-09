﻿# language: ru

@IgnoreOnCIMainBuild
@DocumentationBuild
@tree

Функционал: Инструкция по использованию флага "ОстановкаПриВозникновенииОшибки"
	Как Разработчик
	Я Хочу чтобы если флаг ОстановкаПриВозникновенииОшибки установлен, тогда выполнение всех сценариев прекращалось при возникновении первой ошибки
	Чтобы мне было удобнее искать причину ошибки
 

Сценарий: Остановка выполнения всех сценариев при возникновении первой ошибки
		
	
	Загрузим специальную фичу для проверки работы флага 
	
			Когда Я запускаю сеанс TestManager в служебной базе
			И Пауза 5
			И я разворачиваю активное окно на полный экран
			И Я запускаю Vanessa-Behavior интерактивно
			И Я загружаю один feature файл "support\templates\ПроверкаРаботыФлагаОстановкаПриВозникновенииОшибки.feature"
			И Пауза 5
			
	Теперь выполним эту фичу
			И Я нажимаю на кнопку Выполнить Сценарии
			И я ожидаю окончания выполнения сценариев в сеансе служебной базы
			И обратите внимание 'Обратите внимание. В первом сценарии возникла ошибка, но второй сценарий был выполнен.'

	Теперь установим флаг ОстановкаПриВозникновенииОшибки в значение - Истина
			И     я перехожу к закладке Сервис
			И     я устанавливаю флаг Остановка при возникновении ошибки

	И теперь мы ещё раз выполним нашу фичу
	
			И Я нажимаю на кнопку Перезагрузить сценарии
			И Я нажимаю на кнопку Выполнить Сценарии
			И Пауза 5
			И обратите внимание 'Обратите внимание. Теперь второй сценарий не был выполнен.'
			И обратите внимание 'Спасибо за внимание!'
		
			
	
			