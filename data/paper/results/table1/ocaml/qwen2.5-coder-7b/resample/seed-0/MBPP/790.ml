(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every even index contains even numbers of a given list. *)
let rec even_position (nums : int list) : bool = 
  let rec check lst even_pos = 
    match lst with
    | [] -> true
    | x :: xs -> 
        if even_pos && x % 2 <> 0 then false
        else check xs (not even_pos)
  in check nums true

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:26: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_position (nums : int list) : bool = 
  let rec check lst even_pos = 
    match lst with
    | [] -> true
    | x :: xs -> 
        if even_pos && (x mod 2) <> 0 then false
        else check xs (not even_pos)
  in check nums true

