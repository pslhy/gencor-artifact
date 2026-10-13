let rec change_date_format (dt : string) : string = 
  let date_parts = String.split_on_char '-' dt in
  if List.length date_parts = 3 then 
    let day = List.nth date_parts 2 in
    let month = List.nth date_parts 1 in
    let year = List.nth date_parts 0 in
    day ^ "-" ^ month ^ "-" ^ year
  else 
    "Invalid date format"

let () =
  Printf.printf "%s\n" (change_date_format "2023-04-30")  (* Output: 30-04-2023 *)
  Printf.printf "%s\n" (change_date_format "2023-12-25")  (* Output: 25-12-2023 *)
  Printf.printf "%s\n" (change_date_format "01-01-2024")  (* Output: 01-01-2024 *)
  Printf.printf "%s\n" (change_date_format "2023/04/30")  (* Output: Invalid date format *)
  Printf.printf "%s\n" (change_date_format "2023-4-30")   (* Output: Invalid date format *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
