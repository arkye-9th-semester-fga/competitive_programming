## Simple C I/O/Diff Structure Makefile ##

# Inputs
CODE = code.c
STANDARD_INPUT = 01.input

# Outputs
APPLICATION = code
STANDARD_ANSWER = 01.answer
STANDARD_OUTPUT = 01.output
STANDARD_RESULT = 01.result

# Compilation Settings
## URI gcc version: 4.8.2
URI_FLAGS = -O2 -lm
COMPILE = gcc $(URI_FLAGS) $(CODE) -o $(APPLICATION)

# Execution Settings
## Input -> Application -> Output
EXECUTE = $(APPLICATION) < $(STANDARD_INPUT) > $(STANDARD_OUTPUT)
## Output -> Correct Answer -> Diff Result
TEST_OUTPUT = diff $(STANDARD_ANSWER) $(STANDARD_OUTPUT) > $(STANDARD_RESULT)

.PHONY: all

all:
	make -s $(STANDARD_RESULT)

$(STANDARD_RESULT): $(CODE) $(STANDARD_INPUT) $(STANDARD_ANSWER)
	$(COMPILE)
	$(EXECUTE)
	$(TEST_OUTPUT)

clean:
	rm -f *.result
