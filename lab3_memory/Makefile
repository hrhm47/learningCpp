EXE = allocate

OBJS_DIR = .objs

OBJS_STUDENT = letter.o room.o allocator.o
OBJS_PROVIDED = main.o fileio.o

CXX = clang++
LD = clang++
WARNINGS = -pedantic-errors -Wall -Werror -Wfatal-errors -Wextra -Wno-unused-parameter -Wno-unused-variable
CXXFLAGS = -std=c++17 -g -O0 $(WARNINGS) -MMD -MP -c
LDFLAGS = -I/opt/homebrew/include -L/opt/homebrew/lib -lpng16
ASANFLAGS = -fsanitize=address -fno-omit-frame-pointer

all: $(EXE) $(EXE)-asan

# Pattern rules for object files
$(OBJS_DIR)/%.o: %.cpp | $(OBJS_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@
$(OBJS_DIR)/%-asan.o: %.cpp | $(OBJS_DIR)
	$(CXX) $(CXXFLAGS) $(ASANFLAGS) $< -o $@

# Create directories
$(OBJS_DIR):
	@mkdir -p $(OBJS_DIR)

# Rules for executables... we can use a pattern for the -asan versions, but, unfortunately, we can't use a pattern for the normal executables
$(EXE):
	$(LD) $^ $(LDFLAGS) -o $@
%-asan:
	$(LD) $^ $(LDFLAGS) $(ASANFLAGS) -o $@


# Executable dependencies
$(EXE):      $(patsubst %.o, $(OBJS_DIR)/%.o,      $(OBJS_STUDENT)) $(patsubst %.o, $(OBJS_DIR)/%.o, $(OBJS_PROVIDED))
$(EXE)-asan: $(patsubst %.o, $(OBJS_DIR)/%-asan.o, $(OBJS_STUDENT)) $(patsubst %.o, $(OBJS_DIR)/%.o, $(OBJS_PROVIDED))

# Include automatically generated dependencies
-include $(OBJS_DIR)/*.d

clean:
	rm -rf $(EXE) $(EXE)-asan $(OBJS_DIR)

tidy: clean
	rm -rf doc

.PHONY: all tidy clean
