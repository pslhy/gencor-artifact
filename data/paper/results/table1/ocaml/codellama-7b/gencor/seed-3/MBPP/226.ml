
let rec odd_values_string (str : string) : string =
  if String.length str <= 1 then
    ""
  else if String.get str 0 |> Char.code mod 2 = 1 then
    (String.get str 0) :: odd_values_string (String.sub str 1 (String.length str - 1))
  else
    odd_values_string (String.sub str 1 (String.length str - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
