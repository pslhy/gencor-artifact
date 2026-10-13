let rec decimal_to_binary (decimal : int) : string = 
  if decimal = 0 then "0"
  else string_of_int (decimal mod 2) ^ decimal_to_binary (decimal / 2)

let decimal_to_binary_formatted (decimal : int) : string = 
  "db" ^ decimal_to_binary decimal ^ "db"

(* Test cases *)
let _ = print_endline (decimal_to_binary_formatted 15)  (* Output: "db1111db" *)
let _ = print_endline (decimal_to_binary_formatted 32)  (* Output: "db100000db" *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You will be given a number in decimal form and your task is to convert it to *)
(*     binary format. The function should return a string, with each character representing a binary *)
(*     number. Each character in the string will be '0' or '1'. *)
(*     There will be an extra couple of characters 'db' at the beginning and at the end of the string. *)
(*     The extra characters are there to help with the format. *)
(*     Examples: *)
(*     >>> decimal_to_binary 15 *)
(*     "db1111db" *)
(*     >>> decimal_to_binary 32 *)
(*     "db100000db" *)
