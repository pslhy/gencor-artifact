
let rec move_num (test_str : string) : string =
  if test_str = "" then ""
  else
    match test_str.[0] with
    | '0' .. '9' ->
      let num = test_str.[0] in
      move_num (String.sub test_str 1 (String.length test_str - 1)) ^ num
    | _ ->
      move_num (String.sub test_str 1 (String.length test_str - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
