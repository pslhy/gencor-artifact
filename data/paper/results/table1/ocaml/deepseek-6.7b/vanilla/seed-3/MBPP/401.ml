let rec add_nested_tuples (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match (test_tup1, test_tup2) with
  | ([], []) -> []
  | ((x :: xs) , (y :: ys)) -> (List.map2 (+) x y) :: add_nested_tuples xs ys
  | _ -> raise (Invalid_argument "Error: unequal lists")

(* Test cases *)
let test_tup1 = [[1; 2]; [3; 4]; [5; 6]]
let test_tup2 = [[7; 8]; [9; 10]; [11; 12]]

Printf.printf "%s\n" (Printexc.to_string (lazy (add_nested_tuples [:[5; 6] [7; 8]] [:[9; 10]; [11; 12]])))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise addition of list elements in the given two nested lists. *)
