﻿# encoding: utf-8
# language: ru

@IgnoreOnLinux
# TODO: Убрать тег после разрешения проблемы генерации на new 
@IgnoreOnCIMainBuild

Функционал: Проверка создания EPF в режиме обычных форм
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность на основании фичи генерировать epf файлы
 

	Сценарий: Генерация EPF простая

		Когда я открыл форму VanessaBehavoir в режиме самотестирования
		И я загрузил специальную тестовую фичу "ФичаДляПроверкиГенерацииEPF"
		И я перешел на закладку генератор EPF
		И если ожидаемый файл epf уже существует, то он будет удален
		И я нажал на кнопку "СоздатьШаблоныОбработок"
		Тогда я получил сгенерированный epf файл в ожидаемом каталоге
		И сгенерированный epf прошел проверку на корректность

	Сценарий: Генерация EPF когда есть разные регистры букв в снипетах

		Когда я открыл форму VanessaBehavoir в режиме самотестирования
		И я загрузил специальную тестовую фичу "ЗнакМинусВСценарии"
		И я перешел на закладку генератор EPF
		И если ожидаемый файл epf уже существует, то он будет удален
		И я нажал на кнопку "СоздатьШаблоныОбработок"
		Тогда я получил сгенерированный epf файл в ожидаемом каталоге
		И сгенерированный epf ЗнакМинусВСценарии прошел проверку на корректность

