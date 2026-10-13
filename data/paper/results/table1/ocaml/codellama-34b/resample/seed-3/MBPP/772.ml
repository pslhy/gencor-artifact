(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
let rec remove_length (test_str : string) (k : int) : string =
  if String.length test_str = 0 then ""
  else if String.length test_str = k then
    remove_length (String.sub test_str 1 (String.length test_str - 1)) k
  else
    test_str.[0] :: remove_length (String.sub test_str 1 (String.length test_str - 1)) k

