{
open Lexing
open Parser
}

let space = ' ' | '\t' | '\r'

rule token = parse
  | "fun"    { FUN }
  | "λ"      { FUN }
  | "Pi"     { PI }
  | "Π"      { PI }
  | "Type"   { TYPE }
  | "Nat"    { NAT }
  | "ℕ"      { NAT }
  | "Z"      { Z }
  | "S"      { S }
  | "Ind"    { IND }
  | "="      { EQ }
  | "≡"      { EQ }
  | "Refl"   { REFL }
  | "J"      { J }
  | "("      { LPAR }
  | ")"      { RPAR }
  | ":"      { COLON }
  | ","      { COMMA }
  | "->"     { TO }
  | "→"      { TO }
  | "=>"     { IMP }
  | "⇒"      { IMP }
  | (['A'-'Z''a'-'z''0'-'9']+ as s) { IDENT s }
  | space+ { token lexbuf }
  | '#'([^'#']*'\n') { token lexbuf }
  | "\n" { new_line lexbuf; token lexbuf }
  | eof { EOF }
