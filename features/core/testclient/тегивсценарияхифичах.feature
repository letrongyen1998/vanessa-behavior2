# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка тегирования фич и сценариев

Как разработчик
Я хочу чтобы я мог помечать тегами фичи и сценарии
Чтобы я мог иcпользовать фильтры по фичам и сценариям


Контекст: 
	Когда Я открываю VanessaBehavior в режиме TestClient 
	И     В поле с именем "КаталогФичСлужебный" я указываю путь к каталогу фич "support\templates\фичидляпровериработытегов"
	И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
	И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
	И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"



Сценарий: Исключение по тегу сценария когда идёт загрузка одной фичи
	Когда     я перехожу к закладке "Сервис"
	И     я нажимаю кнопку выбора у поля "Список исключаемых тэгов"
	Тогда открылось окно "Список значений"
	И     я нажимаю на кнопку "Добавить"
	И     в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagScenario"
	И     В форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И     я нажимаю на кнопку "ОК"
	И     В поле с именем "КаталогФичСлужебный" я указываю путь к каталогу фич "support\templates\фичидляпровериработытегов\тегвторойсценарий.feature"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                                  |
		| 'тегвторойсценарий.feature'                                                     |
		|  'тегвторойсценарий'                                                            |
		|  'Первый сценарий без тега'                                                     |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Когда Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
		|  'Дано Я открыл новый сеанс TestClient или подключил уже существующий'          |
		|  'И    Я закрыл все окна клиентского приложения'                                |
	
	
	
	
Сценарий: Отбор по тегу фильтру по сценарию когда идёт загрузка одной фичи
	Когда     я перехожу к закладке "Сервис"
	И     я нажимаю кнопку выбора у поля "Тэги для запуска"
	Тогда открылось окно "Список значений"
	И     я нажимаю на кнопку "Добавить"
	И     в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagScenario"
	И     В форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И     я нажимаю на кнопку "ОК"
	И     В поле с именем "КаталогФичСлужебный" я указываю путь к каталогу фич "support\templates\фичидляпровериработытегов\тегвторойсценарий.feature"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient

	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                               |
		| 'тегвторойсценарий.feature'                  |
		|  'тегвторойсценарий'                          |
		|  'Второй сценарий с тегом, а первый без тега' |
		|  'Когда я развернул все ветки дерева VB'      |
	
	
	
	
Сценарий: Проверка работы отбора тега сценария
	Когда     я перехожу к закладке "Сервис"
	И     я нажимаю кнопку выбора у поля "Тэги для запуска"
	Тогда открылось окно "Список значений"
	И     я нажимаю на кнопку "Добавить"
	И     в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagScenario"
	И     В форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И     я нажимаю на кнопку "ОК"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient

	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                          |
		| 'фичидляпровериработытегов'             |
		| 'тегвторойсценарий'                     |
		| 'Второй сценарий с тегом, а первый без тега'  |
		| 'Когда я развернул все ветки дерева VB' |
		| 'ТегСценарий'                           |
		| 'Тег только в сценарии'                 |
		| 'Когда я развернул все ветки дерева VB' |
		| 'ТегФичаСценарий'                       |
		| 'Тег у фичи и у сценария'               |
		| 'Когда я развернул все ветки дерева VB' |
	
	

Сценарий: Проверка работы отбора тега фичи
	Когда     я перехожу к закладке "Сервис"
	И     я нажимаю кнопку выбора у поля "Тэги для запуска"
	Тогда открылось окно "Список значений"
	И     я нажимаю на кнопку "Добавить"
	И     в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagFeature"
	И     В форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И     я нажимаю на кнопку "ОК"
	Когда Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                              |
		| 'фичидляпровериработытегов'                 |
		| 'ТегФича'                                   |
		| 'Тег только у фичи'                         |
		| 'Когда я развернул все ветки дерева VB'     |
		| 'ТегФичаСценарий'                           |
		| 'Тег у фичи и у сценария'                   |
		| 'Когда я развернул все ветки дерева VB'     |
		| 'У второго сценария нет тега а у фичи есть' |
		| 'Когда я развернул все ветки дерева VB'     |
	
	
	
Сценарий: Проверка работы исключения тега одного сценария
	Когда     я перехожу к закладке "Сервис"
	И     я нажимаю кнопку выбора у поля "Список исключаемых тэгов"
	Тогда открылось окно "Список значений"
	И     я нажимаю на кнопку "Добавить"
	И     в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagScenario"
	И     В форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И     я нажимаю на кнопку "ОК"
	Когда Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                                 |
		| 'фичидляпровериработытегов'                                                    |
		|  'тегвторойсценарий'                                                            |
		|  'Первый сценарий без тега'                                                     |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Когда Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
		|  'Дано Я открыл новый сеанс TestClient или подключил уже существующий'          |
		|  'И    Я закрыл все окна клиентского приложения'                                |
		|  'ТегСценарий'                                                                  |
		|  'Второй сценарий без тега, а первый с тегом'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'ТегФича'                                                                      |
		|  'Тег только у фичи'                                                            |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'ТегФичаСценарий'                                                              |
		|  'У второго сценария нет тега а у фичи есть'                                    |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'ФичаБезТегов'                                                                 |
		|  'Сценарий без тегов'                                                           |
		|  'Когда я развернул все ветки дерева VB'                                        |
					
	
	
Сценарий: Проверка работы исключения без тегов
	Когда Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                                  |
		| 'фичидляпровериработытегов'                                                     |
		|  'тегвторойсценарий'                                                            |
		|  'Первый сценарий без тега'                                                     |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Когда Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
		|  'Дано Я открыл новый сеанс TestClient или подключил уже существующий'          |
		|  'И    Я закрыл все окна клиентского приложения'                                |
		|  'Второй сценарий с тегом, а первый без тега'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'ТегСценарий'                                                                  |
		|  'Тег только в сценарии'                                                        |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Второй сценарий без тега, а первый с тегом'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'ТегФича'                                                                      |
		|  'Тег только у фичи'                                                            |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'ТегФичаСценарий'                                                              |
		|  'Тег у фичи и у сценария'                                                      |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'У второго сценария нет тега а у фичи есть'                                    |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'ФичаБезТегов'                                                                 |
		|  'Сценарий без тегов'                                                           |
		|  'Когда я развернул все ветки дерева VB'                                        |

Сценарий: Проверка работы исключения тега всей фичи
	Когда     я перехожу к закладке "Сервис"
	И     я нажимаю кнопку выбора у поля "Список исключаемых тэгов"
	Тогда открылось окно "Список значений"
	И     я нажимаю на кнопку "Добавить"
	И     в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagFeature"
	И     В форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И     я нажимаю на кнопку "ОК"
	
	Когда Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                                  |
		| 'фичидляпровериработытегов'                                                     |
		|  'тегвторойсценарий'                                                            |
		|  'Первый сценарий без тега'                                                     |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Когда Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
		|  'Дано Я открыл новый сеанс TestClient или подключил уже существующий'          |
		|  'И    Я закрыл все окна клиентского приложения'                                |
		|  'Второй сценарий с тегом, а первый без тега'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'ТегСценарий'                                                                  |
		|  'Тег только в сценарии'                                                        |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Второй сценарий без тега, а первый с тегом'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'ФичаБезТегов'                                                                 |
		|  'Сценарий без тегов'                                                           |
		|  'Когда я развернул все ветки дерева VB'                                        |
		
		
		
