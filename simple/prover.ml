let () = Printexc.record_backtrace true

(** Type variables. *)
type tvar = string

(** Term variables. *)
type var = string

(** Types. *)
type ty =
  | (* Fill this in! *)
