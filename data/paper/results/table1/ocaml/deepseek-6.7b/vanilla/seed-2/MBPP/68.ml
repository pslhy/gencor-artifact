let rec is_Monotonic (a : int list) : bool =
  match a with
  | [] -> true
  | [_] -> true
  | h1::(h2::_ as t) -> (h1 <= h2) && is_Monotonic t

(* Bool.to_string converts boolean values to string representations ("true" and "false") *)
let print_is_Monotonic a =
  Bool.to_string (is_Monotonic a)

(* Usage: *)
let _ = print_endline (print_is_Monotonic [1; 2; 3; 4]) (* returns: "true" *)
let _ = print_endline (print_is_Monotonic [4; 3; 2; 1]) (* returns: "true" *)
let _ = print_endline (print_is_Monotonic [1; 2; 2; 4]) (* returns: "false" *)
let _ = print_endline (print_is_Monotonic [1; 2; 3; 2]) (* returns: "false" *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
