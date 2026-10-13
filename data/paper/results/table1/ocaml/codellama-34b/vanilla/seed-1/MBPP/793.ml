let rec last (arr : int list) (x : int) : int =
    match arr with
    | [] -> -1
    | [a] -> if a = x then 0 else -1
    | hd :: rest -> if hd = x then 0 else 1 + last rest x

(* Example usage *)
let l = [1; 2; 3; 4; 5]

let result = last l 3 ;;
(* Expected = 2 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last position of an element in a sorted list. *)
