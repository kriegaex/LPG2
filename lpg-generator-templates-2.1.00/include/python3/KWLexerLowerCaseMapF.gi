%Terminals
    DollarSign ::= '$'
    Percent ::= '%'
    _
     0    1    2    3    4    5    6    7    8    9
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Headers
    /.
        tokenKind : list  = [0]*128
        
        tokenKind[ord('$'[0])] = $sym_type.$prefix$DollarSign$suffix$
        tokenKind[ord('%'[0])] = $sym_type.$prefix$Percent$suffix$
        tokenKind[ord('_'[0])] = $sym_type.$prefix$_$suffix$
        
        tokenKind[ord('0'[0])] = $sym_type.$prefix$0$suffix$
        tokenKind[ord('1'[0])] = $sym_type.$prefix$1$suffix$
        tokenKind[ord('2'[0])] = $sym_type.$prefix$2$suffix$
        tokenKind[ord('3'[0])] = $sym_type.$prefix$3$suffix$
        tokenKind[ord('4'[0])] = $sym_type.$prefix$4$suffix$
        tokenKind[ord('5'[0])] = $sym_type.$prefix$5$suffix$
        tokenKind[ord('6'[0])] = $sym_type.$prefix$6$suffix$
        tokenKind[ord('7'[0])] = $sym_type.$prefix$7$suffix$
        tokenKind[ord('8'[0])] = $sym_type.$prefix$8$suffix$
        tokenKind[ord('9'[0])] = $sym_type.$prefix$9$suffix$

        tokenKind[ord('a'[0])] = $sym_type.$prefix$a$suffix$
        tokenKind[ord('b'[0])] = $sym_type.$prefix$b$suffix$
        tokenKind[ord('c'[0])] = $sym_type.$prefix$c$suffix$
        tokenKind[ord('d'[0])] = $sym_type.$prefix$d$suffix$
        tokenKind[ord('e'[0])] = $sym_type.$prefix$e$suffix$
        tokenKind[ord('f'[0])] = $sym_type.$prefix$f$suffix$
        tokenKind[ord('g'[0])] = $sym_type.$prefix$g$suffix$
        tokenKind[ord('h'[0])] = $sym_type.$prefix$h$suffix$
        tokenKind[ord('i'[0])] = $sym_type.$prefix$i$suffix$
        tokenKind[ord('j'[0])] = $sym_type.$prefix$j$suffix$
        tokenKind[ord('k'[0])] = $sym_type.$prefix$k$suffix$
        tokenKind[ord('l'[0])] = $sym_type.$prefix$l$suffix$
        tokenKind[ord('m'[0])] = $sym_type.$prefix$m$suffix$
        tokenKind[ord('n'[0])] = $sym_type.$prefix$n$suffix$
        tokenKind[ord('o'[0])] = $sym_type.$prefix$o$suffix$
        tokenKind[ord('p'[0])] = $sym_type.$prefix$p$suffix$
        tokenKind[ord('q'[0])] = $sym_type.$prefix$q$suffix$
        tokenKind[ord('r'[0])] = $sym_type.$prefix$r$suffix$
        tokenKind[ord('s'[0])] = $sym_type.$prefix$s$suffix$
        tokenKind[ord('t'[0])] = $sym_type.$prefix$t$suffix$
        tokenKind[ord('u'[0])] = $sym_type.$prefix$u$suffix$
        tokenKind[ord('v'[0])] = $sym_type.$prefix$v$suffix$
        tokenKind[ord('w'[0])] = $sym_type.$prefix$w$suffix$
        tokenKind[ord('x'[0])] = $sym_type.$prefix$x$suffix$
        tokenKind[ord('y'[0])] = $sym_type.$prefix$y$suffix$
        tokenKind[ord('z'[0])] = $sym_type.$prefix$z$suffix$

        
        @classmethod
        def getKind(cls, c: int) -> int:
            # 0 <= c < 128? 
            return ( $action_type.tokenKind[c] if (c & 0xFFFFFF80) == 0  else  0)
    ./
%End

