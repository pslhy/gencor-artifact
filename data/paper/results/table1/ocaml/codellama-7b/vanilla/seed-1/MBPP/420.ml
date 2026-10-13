let rec cube_Sum (n : int) : int =
match n with
| 0 -> 0
| _ -> (List.fold_left (fun x y -> x + y * y * y) 0 (List.init n (fun x -> x * 2)))
;;

(* Example Usage:
let result = cube_Sum 5;;
print_int result;
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the cube sum of first n even natural numbers. *)
