let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
  if k = 0 then
    []
  else
    let minimum, _ = List.fold_left (fun (minimum, minimum_key) (key, value) ->
      if value < minimum then (value, key) else (minimum, minimum_key)) (Int.max_int, "") test_list in
    let head, tail = List.partition (fun (key, value) ->  key = minimum_key) test_list in
    head @ min_k tail (k - 1)

let () =
  let test1 = ["d", 2; "g", 10; "y", 3; "i", 1; "k", 5; "u", 4; "v", 6] in
  let expected1 = ["i", 1; "k", 5; "u", 4; "v", 6] in
  assert (expected1 = min_k test1 4);
  let test2 = ["x", 7; "x", 8; "x", 9; "x", 10; "x", 11] in
  let expected2 = ["x", 7; "x", 8; "x", 9; "x", 10] in
  assert (expected2 = min_k test2 4);
  let test3 = [] in
  let expected3 = [] in
  assert (expected3 = min_k test3 0);
  ();;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
