let rec decimal_to_binary (decimal : int) : string =
  if decimal = 0 then
    "0"
  else
    decimal_to_binary (decimal / 2) ^ (string_of_int (decimal mod 2))

let rec binary_to_decimal (binary : string) : int =
  let rec aux (binary : string) (decimal : int) : int =
    if binary = "" then
      decimal
    else
      aux (String.sub binary 1 (String.length binary - 1)) (2 * decimal + (Char.code (binary.[0]) - 48))
  in
  aux binary 0

(* Add the db markers to the beginning and the end of the binary string *)
let add_db (binary : string) : string =
  "db" ^ binary ^ "db"

(* Convert the decimal to binary and add the db markers *)
let decimal_to_binary (decimal : int) : string =
  add_db (binary_to_decimal decimal)

(* Get the decimal representation of the binary string and convert it to binary *)
let binary_to_decimal (binary : string) : int =
  binary_to_decimal (String.sub binary 2 (String.length binary - 2))


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
