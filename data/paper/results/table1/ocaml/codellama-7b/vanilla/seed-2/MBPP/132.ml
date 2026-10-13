let rec tup_string (tup1 : string list) : string =
    match tup1 with
    | [] -> ""
    | h::t -> h ^ tup_string t

let rec list_string (lst1 : 'a list) : string =
    match lst1 with
    | [] -> "[]"
    | h::t -> "[" ^ tup_string (List.map ~f:(fun e -> string_of_val e) (h::t)) ^ "]"

and string_of_val (val1 : 'a) : string =
    match val1 with
    | Int i -> string_of_int i
    | String s -> s
    | Bool b -> string_of_bool b
    | Tuple t -> tup_string t
    | _ -> "ERROR"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a list to a string. *)
