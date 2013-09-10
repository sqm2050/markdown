export PATH:=.:${PATH}
all:a.out
objs := main.o markdown.o
a.out:$(objs) markdown.h css.h
	cc  $(objs) -o $@ 

main.o:main.c markdown.h css.h

markdown.o:markdown.c markdown.h

clean:
	@-rm -rf *.o a.out
install: all
	install a.out ~/sbin/md
