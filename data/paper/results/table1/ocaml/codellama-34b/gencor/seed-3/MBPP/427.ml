
let rec change_date_format (dt : string) : string =
  let d, m, y =
    dt
    |> String.split_on_char '-'
    |> List.map int_of_string
  in
  Printf.sprintf "%02d-%02d-%04d" d m y

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
