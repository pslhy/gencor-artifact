
let rec find_Max_Length (lst : int list list) : int =
  match lst with
  | [] -> 0
  | h :: t -> max (List.length h) (find_Max_Length t)

let lst = [[1; 2; 3]; [4; 5]; [6]; [7; 8; 9; 10]];;
print_int (find_Max_Length lst) ;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the longest sublists. *)
