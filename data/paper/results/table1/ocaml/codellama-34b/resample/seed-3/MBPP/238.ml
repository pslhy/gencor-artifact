(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
let rec number_of_substrings (str : string) : int =
  if str = "" then 0 else
  let count = ref 0 in
  for i = 0 to String.length str - 1 do
    if str.[i] = '1' then incr count;
  done;
  !count

