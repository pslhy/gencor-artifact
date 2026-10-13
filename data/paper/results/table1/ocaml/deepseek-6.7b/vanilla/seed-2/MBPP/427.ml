let rec change_date_format (dt : string) : string =
  let len = String.length dt in
  if len < 10 then dt (* return original date if it doesn't have the correct length *)
  else
    let day = String.sub dt 8 2 in
    let month = String.sub dt 5 2 in
    let year = String.sub dt 0 4 in
    day ^ "-" ^ month ^ "-" ^ year
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
