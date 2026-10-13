let rec remove_odd (l : int list) : int list =
    match l with
    | [] -> []
    | h::t when h mod 2 = 0 -> h :: remove_odd t
    | _::t -> remove_odd t

(* Test Cases *)
let () = assert (remove_odd [1; 2; 3; 4; 5; 6] = [2; 4; 6])
let () = assert (remove_odd [2; 4; 6] = [2; 4; 6])
let () = assert (remove_odd [1; 1; 1; 3; 3; 3] = [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove odd numbers from a given list. *)
