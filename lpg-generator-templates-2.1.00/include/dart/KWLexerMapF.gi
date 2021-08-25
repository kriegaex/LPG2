%Terminals
    DollarSign ::= '$'
    Percent ::= '%'
    _
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
%End

%Headers
    /.
       
        static  List<int> init_tokenKind() 
        {
            List<int> tokenKind =  List<int>.filled(128,0);
            tokenKind['\$'.codeUnitAt(0)] = %sym_type.%prefix%DollarSign%suffix%;
            tokenKind['%'.codeUnitAt(0)] = %sym_type.%prefix%Percent%suffix%;
            tokenKind['_'.codeUnitAt(0)] = %sym_type.%prefix%_%suffix%;

            tokenKind['a'.codeUnitAt(0)] = %sym_type.%prefix%a%suffix%;
            tokenKind['b'.codeUnitAt(0)] = %sym_type.%prefix%b%suffix%;
            tokenKind['c'.codeUnitAt(0)] = %sym_type.%prefix%c%suffix%;
            tokenKind['d'.codeUnitAt(0)] = %sym_type.%prefix%d%suffix%;
            tokenKind['e'.codeUnitAt(0)] = %sym_type.%prefix%e%suffix%;
            tokenKind['f'.codeUnitAt(0)] = %sym_type.%prefix%f%suffix%;
            tokenKind['g'.codeUnitAt(0)] = %sym_type.%prefix%g%suffix%;
            tokenKind['h'.codeUnitAt(0)] = %sym_type.%prefix%h%suffix%;
            tokenKind['i'.codeUnitAt(0)] = %sym_type.%prefix%i%suffix%;
            tokenKind['j'.codeUnitAt(0)] = %sym_type.%prefix%j%suffix%;
            tokenKind['k'.codeUnitAt(0)] = %sym_type.%prefix%k%suffix%;
            tokenKind['l'.codeUnitAt(0)] = %sym_type.%prefix%l%suffix%;
            tokenKind['m'.codeUnitAt(0)] = %sym_type.%prefix%m%suffix%;
            tokenKind['n'.codeUnitAt(0)] = %sym_type.%prefix%n%suffix%;
            tokenKind['o'.codeUnitAt(0)] = %sym_type.%prefix%o%suffix%;
            tokenKind['p'.codeUnitAt(0)] = %sym_type.%prefix%p%suffix%;
            tokenKind['q'.codeUnitAt(0)] = %sym_type.%prefix%q%suffix%;
            tokenKind['r'.codeUnitAt(0)] = %sym_type.%prefix%r%suffix%;
            tokenKind['s'.codeUnitAt(0)] = %sym_type.%prefix%s%suffix%;
            tokenKind['t'.codeUnitAt(0)] = %sym_type.%prefix%t%suffix%;
            tokenKind['u'.codeUnitAt(0)] = %sym_type.%prefix%u%suffix%;
            tokenKind['v'.codeUnitAt(0)] = %sym_type.%prefix%v%suffix%;
            tokenKind['w'.codeUnitAt(0)] = %sym_type.%prefix%w%suffix%;
            tokenKind['x'.codeUnitAt(0)] = %sym_type.%prefix%x%suffix%;
            tokenKind['y'.codeUnitAt(0)] = %sym_type.%prefix%y%suffix%;
            tokenKind['z'.codeUnitAt(0)] = %sym_type.%prefix%z%suffix%;

            tokenKind['A'.codeUnitAt(0)] = %sym_type.%prefix%A%suffix%;
            tokenKind['B'.codeUnitAt(0)] = %sym_type.%prefix%B%suffix%;
            tokenKind['C'.codeUnitAt(0)] = %sym_type.%prefix%C%suffix%;
            tokenKind['D'.codeUnitAt(0)] = %sym_type.%prefix%D%suffix%;
            tokenKind['E'.codeUnitAt(0)] = %sym_type.%prefix%E%suffix%;
            tokenKind['F'.codeUnitAt(0)] = %sym_type.%prefix%F%suffix%;
            tokenKind['G'.codeUnitAt(0)] = %sym_type.%prefix%G%suffix%;
            tokenKind['H'.codeUnitAt(0)] = %sym_type.%prefix%H%suffix%;
            tokenKind['I'.codeUnitAt(0)] = %sym_type.%prefix%I%suffix%;
            tokenKind['J'.codeUnitAt(0)] = %sym_type.%prefix%J%suffix%;
            tokenKind['K'.codeUnitAt(0)] = %sym_type.%prefix%K%suffix%;
            tokenKind['L'.codeUnitAt(0)] = %sym_type.%prefix%L%suffix%;
            tokenKind['M'.codeUnitAt(0)] = %sym_type.%prefix%M%suffix%;
            tokenKind['N'.codeUnitAt(0)] = %sym_type.%prefix%N%suffix%;
            tokenKind['O'.codeUnitAt(0)] = %sym_type.%prefix%O%suffix%;
            tokenKind['P'.codeUnitAt(0)] = %sym_type.%prefix%P%suffix%;
            tokenKind['Q'.codeUnitAt(0)] = %sym_type.%prefix%Q%suffix%;
            tokenKind['R'.codeUnitAt(0)] = %sym_type.%prefix%R%suffix%;
            tokenKind['S'.codeUnitAt(0)] = %sym_type.%prefix%S%suffix%;
            tokenKind['T'.codeUnitAt(0)] = %sym_type.%prefix%T%suffix%;
            tokenKind['U'.codeUnitAt(0)] = %sym_type.%prefix%U%suffix%;
            tokenKind['V'.codeUnitAt(0)] = %sym_type.%prefix%V%suffix%;
            tokenKind['W'.codeUnitAt(0)] = %sym_type.%prefix%W%suffix%;
            tokenKind['X'.codeUnitAt(0)] = %sym_type.%prefix%X%suffix%;
            tokenKind['Y'.codeUnitAt(0)] = %sym_type.%prefix%Y%suffix%;
            tokenKind['Z'.codeUnitAt(0)] = %sym_type.%prefix%Z%suffix%;
            return tokenKind;
        }
        static  final List<int> tokenKind =  init_tokenKind(); 
        
        static  int getKind(int c)
        {
            return (((c & 0xFFFFFF80) == 0) /* 0 <= c < 128? */ ? %action_type.tokenKind[c] : 0);
        }
    ./
%End

