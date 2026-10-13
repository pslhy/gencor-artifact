let rec all_unique (test_list : int list) : bool =
  if test_list = [] then
    true
  else
    let first_element = test_list.hd() in
    let rec contains (check_list : int list) : bool =
      if check_list = [] then
        false
      else if check_list.hd() = first_element then
        true
      else
        contains (check_list.tl()) in
    if contains (test_list.tl()) then
      false
    else
      all_unique (test_list.tl())


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if the elements of a given list are unique or not. *)
