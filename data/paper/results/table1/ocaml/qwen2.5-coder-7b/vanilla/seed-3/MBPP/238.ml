let rec number_of_substrings (str : string) : int = 
  let len = String.length str in
  if len = 0 then 0
  else len + number_of_substrings (String.sub str 1 (len - 1))

let solve_problem (s: string) =
  if String.trim s = "" then 0 else number_of_substrings s

let () =
  assert (solve_problem "abc" = 6);
  assert (solve_problem "" = 0);
  assert (solve_problem "a" = 1);
  assert (solve_problem "ab" = 3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
