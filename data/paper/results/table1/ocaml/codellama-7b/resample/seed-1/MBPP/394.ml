(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if given list contains no duplicates. *)
let rec check_distinct (test_tup : int list) : bool =
match test_tup with
| [] -> true
| x :: xs -> not (exists (fun x -> x = x) xs) && check_distinct xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:19: Unbound value "exists" *)
(*     Hint: Did you mean "exit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_distinct (test_tup : int list) : bool =
match test_tup with
| [] -> true
| x :: xs -> (List.exists (fun y -> y = x) xs) && (check_distinct xs)

