let rec change_date_format (dt : string) : string =
    let year = dt.[0] in
    let month = dt.[1] in
    let day = dt.[2] in
    (day :: month :: year :: [])

let () =
    let input_dt = "2022-12-24" in
    let output_dt = change_date_format input_dt in
    print_endline output_dt;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
