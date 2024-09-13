%{
open Expr
%}

%token IMP PI TYPE NAT Z S IND EQ REFL J
%token FUN TO
%token LPAR RPAR COLON COMMA
%token <string> IDENT
%token EOF

%right TO IMP

%start expr
%type <Expr.expr> expr
%%

/* An expression */
expr:
  | aexpr { $1 }
  | PI LPAR IDENT COLON expr RPAR TO expr  { Pi ($3, $5, $8) }
  | LPAR IDENT COLON expr RPAR TO expr     { Pi ($2, $4, $7) }
  | FUN LPAR IDENT COLON expr RPAR TO expr { Abs ($3, $5, $8) }
  | expr IMP expr                          { Pi ("_", $1, $3) }
  | expr TO expr                           { Pi ("_", $1, $3) }
  | aexpr EQ aexpr                         { Eq ($1, $3) }

/* An application */
aexpr:
  | sexpr       { $1 }
  | aexpr sexpr { App ($1, $2) }

/* A simple expression */
sexpr:
  | LPAR expr RPAR                  { $2 }
  | IDENT                           { Var $1 }
  | TYPE                            { Type }
  | NAT                             { Nat }
  | Z                               { Z }
  | S sexpr                         { S $2 }
  | IND sexpr sexpr sexpr sexpr     { Ind ($2, $3, $4, $5) }
  | REFL sexpr                      { Refl $2 }
  | J sexpr sexpr sexpr sexpr sexpr { J ($2, $3, $4, $5, $6) }
