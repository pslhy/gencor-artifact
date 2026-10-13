let rec check_distinct (test_tup : int list) : bool =
  if test_tup = [] then true
  else if List.filter (fun x -> x = List.hd test_tup) test_tup = [] then
    check_distinct (List.tl test_tup)
  else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if given list contains no duplicates. *)
