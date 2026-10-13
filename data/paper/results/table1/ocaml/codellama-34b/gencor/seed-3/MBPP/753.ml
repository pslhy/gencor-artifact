
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
  if k = 0 then
    []
  else
    let minimum, _ = List.fold_left (fun (minimum, minimum_key) (key, value) ->
      if value < minimum then (value, key) else (minimum, minimum_key)) (Int.max_int, "") test_list in
    let head, tail = List.partition (fun (key, value) ->  key = minimum) test_list in
    head @ min_k tail (k - List.length head)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
