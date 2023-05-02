.DEFAULT_GOAL := outer

mid.o: CXXFLAGS += -fPIC

mid.o:   CXXFLAGS += -DWHAT='"mid"'
outer.o: CXXFLAGS += -DWHAT='"outer"'

mid.so: mid.o
	g++ $(LDFLAGS) -o $@ -shared $^ $(LDLIBS)

outer: outer.o mid.so
	g++ -Wl,-rpath=$(PWD) $(LDFLAGS) -o $@ $^ $(LDLIBS)

clean:
	rm -rf *.o *.so outer
.PHONY: clean
