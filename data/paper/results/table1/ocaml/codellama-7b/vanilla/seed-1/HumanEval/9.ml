let rec rolling_max (numbers : int list) : int list =
match numbers with
| [] -> []
| [x] -> [x]
| x :: xs -> x :: rolling_max (xs @ (List.tl (List.rev (List.sort (fun a b -> b - a) numbers))))

let test_rolling_max numbers expected =
assert (List.sort (rolling_max numbers) = List.sort expected)

let () =
test_rolling_max [];
test_rolling_max [1];
test_rolling_max [1; 2; 3; 2; 3; 4; 2];
test_rolling_max [2; 5; 1; 2; 3; 4; 2];
test_rolling_max [1; 2; 3; 4; 5; 6; 7; 8]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a given list of integers, generate a list of rolling maximum element found until given moment *)
(*     in the sequence. *)
(*     >>> rolling_max [1; 2; 3; 2; 3; 4; 2] *)
(*     [1; 2; 3; 3; 3; 4; 4] *)
