// Config protection states
// Защита конфигурации
#define PROTECTION_PRIVATE "PRIVATE"
#define PROTECTION_READONLY "READONLY"
#define PROTECTION_NONE "NONE"
/// Wrapper to not overwrite a variable if a list key doesnt exist. Auto casts to bools.
/// Защита от перезаписи переменной, если ключ в списке отсутствует. Автоматически приводит значения к типу bool.
#define CONFIG_LOAD_BOOL(target, input) \
	if(!isnull(input)) {\
		target = ((input == 1) ? TRUE : FALSE)\
	}

/// Wrapper to not overwrite a variable if a list key doesnt exist. Auto casts to number.
/// Защита от перезаписи переменной, если ключ в списке отсутствует. Автоматически преобразует значение в число.
#define CONFIG_LOAD_NUM(target, input) \
	if(!isnull(input)) {\
		target = text2num(input)\
	}

/// Wrapper to not overwrite a variable if a list key doesnt exist. Auto casts to number, and accepts a macro argument for number maths (ds to min for example)
/// Защита от перезаписи переменной, если ключ в списке отсутствует. Автоматически преобразует значения в число и принимает аргумент макроса для числовых вычислений.
#define CONFIG_LOAD_NUM_MULT(target, input, multiplier) \
	if(!isnull(input)) {\
		target = text2num(input) multiplier\
	}

/// Wrapper to not overwrite a variable if a list key doesnt exist. Auto casts to string.
/// Защита от перезаписи переменной, если ключ в списке отсутствует. Автоматически приводит значение к строковому типу.
#define CONFIG_LOAD_STR(target, input) \
	if(!isnull(input)) {\
		target = "[input]"\
	}

/// Wrapper to not overwrite a variable if a list key doesnt exist. No casting done.
/// Защита от перезаписи переменной, если ключ в списке отсутствует. Приведение типов не выполняется.
#define CONFIG_LOAD_RAW(target, input) \
	if(!isnull(input)) {\
		target = input\
	}

/// Wrapper to not overwrite a variable if a list key doesnt exist. Ensures target is a list.
/// Защита от перезаписи переменной при отсутствии ключа в списке. Гарантирует, что объект является списком.
#define CONFIG_LOAD_LIST(target, input) \
	if(islist(input)) {\
		target = input\
	}
