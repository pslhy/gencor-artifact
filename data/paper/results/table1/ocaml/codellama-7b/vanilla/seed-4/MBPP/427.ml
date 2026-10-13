let rec change_date_format (dt : string) : string = 
    (* Extract the components of the date string *)
    let year, month, day =
        let tokens = String.split_on_char '-' dt in
        tokens.(0), tokens.(1), tokens.(2)
    in
    (* Concatenate the components of the date string in the desired format *)
    String.concat "-" [day; month; year]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
