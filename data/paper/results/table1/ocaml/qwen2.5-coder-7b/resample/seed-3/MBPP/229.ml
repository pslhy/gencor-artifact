(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
let rec re_arrange_array (arr : int list) (n : int) : int list = 
  let rec separate_negatives positives negatives = function
    | [] -> (List.rev positives, List.rev negatives)
    | x :: xs ->
      if x < 0 then separate_negatives positives (x :: negatives) xs
      else separate_negatives (x :: positives) negatives xs
  in
  let positives, negatives = separate_negatives [] [] arr in
  let (neg_part, pos_part) = List.split_n negatives n in
  neg_part @ pos_part @ positives

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:30: Unbound value "List.split_n" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list = 
  let rec separate_negatives positives negatives = function
    | [] -> (List.rev positives, List.rev negatives)
    | x :: xs ->
      if x < 0 then separate_negatives positives (x :: negatives) xs
      else separate_negatives (x :: positives) negatives xs
  in
  let positives, negatives = separate_negatives [] [] arr in
  let neg_part, pos_part = List.split negatives in
  let (neg_first, neg_second) = (List.take n neg_part, List.drop n neg_part) in
  neg_first @ neg_second @ pos_part @ positives

