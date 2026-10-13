let rec return_sum (dict : (string * int) list) : int =
  match dict with
  | ([], accum) -> 0 (* Base case: empty list, return 0 *)
  | (_, accum)::tail -> accum + return_sum tail (* Recursive case: add the current value to the remaining list *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write function to find the sum of all items in the given association list. *)
