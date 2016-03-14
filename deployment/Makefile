all: testing_release

testing_release:
	cat bin/release.sh | tr -d '\r' | tee bin/.release_CRLF_sucks.sh
	chmod 0755 bin/.release_CRLF_sucks.sh
	./bin/.release_CRLF_sucks.sh testing_release
	
clean:
	rm -rf /cygdrive/d/CYGWIN_RELEASES/

