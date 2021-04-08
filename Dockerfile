FROM racket/racket
# Why were they installing 'compiler-lib'...? I'm sure the next failure message will show me...?
RUN raco pkg install --batch --auto \
         https://github.com/jackfirth/resyntax.git
RUN raco pkg install --batch --auto \
         "https://github.com/9999years/racket-package-resyntax-action.git#main"
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
