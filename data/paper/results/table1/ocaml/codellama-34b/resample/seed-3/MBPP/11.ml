(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
let rec remove_Occ (s : string) (ch : string) : string =
  if s = "" then ""
  else
    (if s.[0] != ch then s else s.[1..])
    |> remove_Occ (if s.[String.length s - 1] != ch then s else s.[0..])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:39: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_Occ (s : string) (ch : string) : string =
  if s = "" then ""
  else
    (if s.[0] != ch then s else s.[1..-1])
    |> remove_Occ (if s.[String.length s - 1] != ch then s else s.[0..-1])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:40: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_Occ (s : string) (ch : string) : string =
  if s = "" then ""
  else
    (if s.[0] != ch then s else s.[1..])
    |> remove_Occ (if s.[String.length s - 1] != ch then s else s.[0..])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:39: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_Occ (s : string) (ch : string) : string =
  let len = String.length s in
  let chlen = String.length ch in
  let rec loop i =
    if i < len - chlen + 1 then
      if String.sub s i chlen = ch then
        remove_Occ s ch
      else
        s
  in
  loop 0

