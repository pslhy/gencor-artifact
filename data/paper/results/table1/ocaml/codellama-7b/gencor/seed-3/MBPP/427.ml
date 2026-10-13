
let rec change_date_format (dt : string) : string =
  if dt = "" then ""
  else
    let date_parts = String.split_on_char '-' dt in
    let day = List.nth date_parts 2 in
    let month = List.nth date_parts 1 in
    let year = List.nth date_parts 0 in
    day ^ "-" ^ month ^ "-" ^ year


let anon_fun = fun dt1 -> change_date_format dt1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
