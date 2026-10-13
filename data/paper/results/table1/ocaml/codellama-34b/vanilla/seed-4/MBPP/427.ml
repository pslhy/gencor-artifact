let rec change_date_format (dt : string) : string = 
    let open Str in
    if dt = "" then 
        dt
    else 
        let year = dt.[0..3] in
        let month = dt.[5..6] in
        let day = dt.[8..9] in
        let new_date = day ^ "/" ^ month ^ "/" ^ year in
        new_date


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
