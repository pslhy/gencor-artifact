let rec move_num (test_str : string) : string =
  let len = String.length test_str in
  let rec helper (pos : int) (res : string) : string =
    if pos < len then
      match test_str.[pos] with
      | x when x >= '0' && x <= '9' -> helper (pos + 1) (res ^ Char.escaped x)
      | x -> helper (pos + 1) (res ^ Char.escaped x)
    else
      res
  in
  let non_nums = helper 0 "" in
  let nums = helper 0 "" in
  non_nums ^ nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
