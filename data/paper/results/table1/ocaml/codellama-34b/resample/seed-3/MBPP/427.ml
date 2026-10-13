(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
let rec change_date_format (dt : string) : string =
  let d, m, y =
    dt
    |> String.split_on_char '-'
    |> List.mapint
  in
  let d =
    if String.length d < 2 then
      "0" ^ d
    else
      d
  in
  let m =
    if String.length m < 2 then
      "0" ^ m
    else
      m
  in
  d ^ "/" ^ m ^ "/" ^ y

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:8: Unbound value "List.mapint" *)
(*     Hint: Did you mean "mapi"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string =
  let d, m, y =
    dt
    |> String.split_on_char '-'
    |> List.mapi (fun i x -> if i = 0 then "0" ^ x else x)
  in
  d ^ "/" ^ m ^ "/" ^ y

