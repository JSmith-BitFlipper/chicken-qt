(use qt utils protobj)

(define a (qt:init))
(define w (qt:widget (read-all "hello.ui")))
(print (? w pointer))
(define b (qt:find w "quitButton"))
(print b)
(qt:connect b "clicked()" a "quit()")
(qt:show w)
(qt:run)