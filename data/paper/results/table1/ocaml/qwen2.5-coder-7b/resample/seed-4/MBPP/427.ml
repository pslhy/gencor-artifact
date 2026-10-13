(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
let rec change_date_format (dt : string) : string = 
  let parts = Str.split (Str.regexp "-") dt in
  if List.length parts = 3 then 
    String.concat "-" (List.rev (List.tl parts))
  else 
    failwith "Invalid date format"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string = 
  let parts = Str.split (Str.regexp "-") dt in
  if List.length parts = 3 then 
    String.concat "-" (List.rev (List.tl parts))
  else 
    failwith "Invalid date format"

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string = 
  let open Str in
  let parts = split (regexp "-") dt in
  if List.length parts = 3 then 
    String.concat "-" (List.rev (List.tl parts))
  else 
    failwith "Invalid date format"

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string = 
  let parts = Str.split (Str.regexp "-") dt in
  if List.length parts = 3 then 
    String.concat "-" (List.rev (List.tl parts))
  else 
    failwith "Invalid date format"

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string = 
  let parts = Stdlib.Str.split (Stdlib.Str.regexp "-") dt in
  if List.length parts = 3 then 
    String.concat "-" (List.rev (List.tl parts))
  else 
    failwith "Invalid date format"

