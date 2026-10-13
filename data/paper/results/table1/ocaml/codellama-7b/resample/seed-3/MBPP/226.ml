(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
let rec odd_values_string (str : string) : string =
  if String.length str <= 1 then
    ""
  else if String.get str 0 |> Char.code % 2 = 0 then
    String.make 1 (String.get str 0) ^ odd_values_string (String.sub str 1 (String.length str - 1))
  else
    odd_values_string (String.sub str 1 (String.length str - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:41: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_values_string (str : string) : string =
  match str with
  | "" -> ""
  | _ ->
      let num = (%Int_of_string (String.sub str 0 1)) in
      if num mod 2 = 1 then
        String.make 1 (String.get str 0) ^ odd_values_string (String.sub str 1 (String.length str - 1))
      else
        odd_values_string (String.sub str 1 (String.length str - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_values_string (str : string) : string =
  match str with
  | "" -> ""
  | _ ->
      let num = (%Int_of_string (String.sub str 0 1)) in
      if num mod 2 = 1 then
        String.make 1 (String.get str 0) ^ odd_values_string (String.sub str 1 (String.length str - 1))
      else
        odd_values_string (String.sub str 1 (String.length str - 1))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_values_string (str : string) : string =
  match str with
  | "" -> ""
  | _ ->
      let num = int_of_string (String.sub str 0 1) in
      if num mod 2 = 1 then
        String.make 1 (String.get str 0) ^ odd_values_string (String.sub str 1 (String.length str - 1))
      else
        odd_values_string (String.sub str 1 (String.length str - 1))

