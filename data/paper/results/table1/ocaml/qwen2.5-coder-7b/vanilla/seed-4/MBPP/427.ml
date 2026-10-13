let rec change_date_format (dt : string) : string = 
  let parts = Str.split (Str.regexp "-") dt in
  if List.length parts = 3 then 
    String.concat "-" (List.rev (List.tl parts))
  else 
    failwith "Invalid date format"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
