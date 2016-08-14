## Simple C I/O/Diff Structure Makefile ##

include gmsl

# Source Code
CODE = code.c
APPLICATION = code

# Test Directory
TEST_DIR = test/
TEST_DIRS = $(wildcard $(TEST_DIR)*)

# Compilation Settings
## URI gcc version: 4.8.2
URI_FLAGS = -O2 -lm
COMPILE = gcc $(URI_FLAGS) $(CODE) -o $(APPLICATION)

# Makefile
INPUT = test.input
ANSWER = test.answer
OUTPUT = test.output

ECHO_INPUT = echo "\nINPUT:"; cat $(dir)/$(INPUT)
ECHO_ANSWER = echo "\nCORRECT ANSWER:"; cat $(dir)/$(ANSWER)
ECHO_OUTPUT = echo "\nOUTPUT:"; cat $(OUTPUT)

RUN_TEST = ./$(APPLICATION) < $(dir)/test.input > $(OUTPUT)

CHECK_RESULT = sh check_result.sh $(dir)/test.answer $(OUTPUT)

EXECUTE = echo $(dir); $(ECHO_INPUT); $(RUN_TEST); $(ECHO_OUTPUT); $(ECHO_ANSWER); $(CHECK_RESULT);

.PHONY: all

all:
	make --always-make --no-print-directory main

main: $(CODE)
	@clear
	@echo "\nCompiling:"
	$(COMPILE)
	@$(COMPILE_CHECKER)
	@echo "\nExecuting:"
	@echo "==========================="
	@$(foreach dir, $(TEST_DIRS), $(EXECUTE))
	@rm -f *.output

clean:
	@echo "\nCLEANING CONTENT"
	rm -f code *.output
