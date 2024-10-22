{
open Lexing
open Parser
}

let space = ' ' | '\t' | '\r'

rule token = parse
  | "not"    { NOT }
  | "¬"      { NOT }
  | "fun"    { FUN }
  | "λ"      { FUN }
  | "fst"    { FST }
  | "π₁"     { FST }
  | "snd"    { SND }
  | "π₂"     { SND }
  | "case"   { CASE }
  | "of"     { OF }
  | "left"   { LEFT }
  | "right"  { RIGHT }
  | "absurd" { ABSURD }
  | "T"      { TRUE }
  | "⊤"      { TRUE }
  | "_"      { FALSE }
  | "⊥"      { FALSE }
  | "|"      { BAR }
  | "=>"     { IMP }
  | "⇒"      { IMP }
  | "/\\"    { AND }
  | "∧"      { AND }
  | "\\/"    { OR }
  | "∨"      { OR }
  | "("      { LPAR }
  | ")"      { RPAR }
  | ":"      { COLON }
  | ","      { COMMA }
  | "->"     { TO }
  | "→"      { TO }
  | (['A'-'Z''a'-'z''0'-'9']+ as s) { IDENT s }
  | space+ { token lexbuf }
  | "\n" { new_line lexbuf; token lexbuf }
  | eof { EOF }
