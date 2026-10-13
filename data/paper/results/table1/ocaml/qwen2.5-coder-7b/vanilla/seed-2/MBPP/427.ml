let rec change_date_format (dt : string) : string = 
    let year = String.sub dt 0 4 
    and month = String.sub dt 5 2
    and day = String.sub dt 8 2
    in day ^ "-" ^ month ^ "-" ^ year


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
