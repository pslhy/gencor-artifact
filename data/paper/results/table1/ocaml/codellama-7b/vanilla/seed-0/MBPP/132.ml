let rec tup_string (tup1 : string list) : string =
  match tup1 with
  | [] -> ""
  | [x] -> x
  | x::xs -> x ^ "," ^ tup_string xs

let tuple_to_string (tup : 'a list list) : string =
    let rec aux (tup : 'a list list) (i : int) : string =
        match tup with
        | [] -> ""
        | xs::xss -> if i = 0 then "(" ^ tup_string xs ^ ", " ^ aux xss (i + 1) ^ ")" else aux xss i
    in
    aux tup 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a list to a string. *)
