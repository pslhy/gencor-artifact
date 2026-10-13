(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
let rec max_sub_array_sum (a : int list) (size : int) : int =
  match size with
    | 0 -> if List.hd a > 0 then List.hd a else 0
    | _ -> max (max_sub_array_sum a (size - 1)) (List.fold_left (+) 0 (List.rev (List.rev_take size a)));;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:82: Unbound value "List.rev_take" *)
(*     Hint: Did you mean "rev_map" or "rev_map2"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int =
  match size with
  | 0 -> if List.hd a > 0 then List.hd a else 0
  | _ -> max (max_sub_array_sum a (size - 1)) (List.fold_left (+) 0 (List.rev_map (fun _ -> List.hd a) (List.init size (fun i -> i))));;

