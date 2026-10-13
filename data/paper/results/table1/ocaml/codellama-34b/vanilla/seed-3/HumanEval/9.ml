let rec rolling_max (numbers : int list) : int list =
  let rec helper (acc : int list) (numbers : int list) : int list =
    match numbers with
    | [] -> acc
    | x :: xs ->
        let max_so_far = if acc = [] then x else max acc in
        helper (max_so_far :: acc) xs
  in
  List.rev (helper [] numbers)

(* Example usage: *)
rolling_max [1; 2; 3; 2; 3; 4; 2] = [1; 2; 3; 3; 3; 4; 4]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a given list of integers, generate a list of rolling maximum element found until given moment *)
(*     in the sequence. *)
(*     >>> rolling_max [1; 2; 3; 2; 3; 4; 2] *)
(*     [1; 2; 3; 3; 3; 4; 4] *)
