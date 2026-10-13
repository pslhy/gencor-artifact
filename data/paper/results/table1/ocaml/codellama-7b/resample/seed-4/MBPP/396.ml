(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
let rec check_char (string : string) : string = 
    let open String in 
    let len = length string in 
    if len == 0 then "E" : *v API:Ostring
    if len == 1 then "S" : *v API:Ostring
    else 
        let head = substring 0 1 string in 
        if head == substring (len - 1) 1 string then "S" : *v API:Ostring
        else "E" : *v API:Ostring


let main () = 
    let string = read_line () in 
    let is_char = check_char string in 
    if is_char = "S" then print_string "The string does not have the same character at the start and the end"
    else print_string "The string does have the same character at the start and the end"

let () = main ()

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_char (string : string) : string =
  if string = "" then "E"
  else if string.[0] = string.[string_length string - 1] then "S"
  else "E"

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:32: Unbound value "string_length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_char (string : string) : string =
  if string = "" then "E"
  else if String.get string 0 = String.get string (String.length string - 1) then "S"
  else "E"

