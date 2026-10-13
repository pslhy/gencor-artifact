let rec decimal_to_binary (decimal : int) : string =
    let rec aux (decimal : int) (acc : string) : string * int =
        if decimal = 0 then
            (acc, 0)
        else
            let digit = decimal mod 2 in
            let new_acc = (string_of_int digit) ^ acc in
            let new_decimal = decimal / 2 in
            aux new_decimal new_acc
    in
    let (binary_string, _) = aux decimal "" in
    "db" ^ binary_string ^ "db"


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
