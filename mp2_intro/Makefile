# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++17 -Wall -Werror -O2 -I/usr/local/include -I/opt/homebrew/include

# Linker flags
LDFLAGS = -L/usr/local/lib -L/opt/homebrew/lib -lpng

# Executable name
TARGET = intro

# Source files
SRCS = main.cpp intro.cpp RGBA/rgbapixel.cpp RGBA/png.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Default target
all: $(TARGET)

# Link object files to create the executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

# Compile .cpp files into .o files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(OBJS) $(TARGET) out.png art.png