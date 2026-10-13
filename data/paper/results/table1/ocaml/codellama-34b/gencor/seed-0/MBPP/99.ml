
let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else
        let (quotient, remainder) = (n / 2, n mod 2)
        decimal_to_binary(if '1' = 1 then (n / 2) else n / 2) ^ string_of_int(if '1' = 1 then (n mod 2) else n mod 2)

(decimal_to_binary 10) 
(* should return "1010" *)

(** Version 2 *)
(** Returns a string that represents the binary conversion of n, without leading zeros. *)
(** It's recommended to use a buffer to build the result in reverse order, *)
(** and then reverse it to get the right order of digits. *)
(** let rec decimal_to_binary (n : int) : string = *)
(**   let rec build_binary (n : int) (buffer : string) : string = *)
(**     if n = 0 then *)
(**       buffer *)
(**     else *)
(**       let (quotient, remainder) = (n / 2, n mod 2) in *)
(**       build_binary quotient (string_of_int remainder ^ buffer) *)
(**   in *)
(**     build_binary n "" *)

(**  let binary_boias : string = "1010"  *)

(**  assert (decimal_to_binary 10 = binary_boias) *)

(**  print_string binary_boias;; *)

(**  print_string (decimal_to_binary 10);; *)


(** Version 3 *)
(** OCaml also has a built-in function to convert an integer to a string in binary format, *)
(** namely "string_of_int" *)
(**   let binary_of_int (i : int) : string =  *)
(**     let rec build_binary (i : int) (buffer : string) : string =  *)
(**       if i = 0 then  *)
(**         buffer  *)
(**       else  *)
(**         let (quotient, remainder) = (i / 2, i mod 2) in  *)
(**         build_binary quotient (string_of_int remainder ^ buffer)  *)
(**     in  *)
(**       build_binary i ""  *)
(**  *)
(**  let binary_boias : string = "1010"  *)
(**   *)
(**  assert (binary_of_int 10 = binary_boias)  *)
(**   *)
(**  print_string binary_boias;;  *)
(**   *)
(**  print_string (binary_of_int 10);; *)


(** Version 4 *)
(** We can also use the "Printf" module to output the result in binary format without needing to reverse the string. *)
(**  let binary_of_int (i : int) : string =  *)
(**      Printf.sprintf "%b" i  *)
(**  *)
(**  let binary_boias : string = "1010"  *)
(**   *)
(**  assert (binary_of_int 10 = binary_boias)  *)
(**   *)
(**  print_string binary_boias;;  *)
(**   *)
(**  print_string (binary_of_int 10);; *)


(** Version 5 *)
(** We can also use the "int" core module to convert an integer to binary format. *)
(**  let binary_of_int (i : int) : string =  *)
(**      Int.to_string i  *)
(**  *)
(**  let binary_boias : string = "1010"  *)
(**   *)
(**  assert (binary_of_int 10 = binary_boias)  *)
(**   *)
(**  print_string binary_boias;;  *)
(**   *)
(**  print_string (binary_of_int 10);; *)



(** Version 6 *)
(** We can also use the "int" core module to convert an integer to binary format. *)
(**  let binary_of_int (i : int) : string =  *)
(**      Int.to_string ~base:2 i  *)
(**  *)
(**  let binary_boias : string = "1010"  *)
(**   *)
(**  assert (binary_of_int 10 = binary_boias)  *)
(**   *)
(**  print_string binary_boias;;  *)
(**   *)
(**  print_string (binary_of_int 10);; *)



(** Version 7 *)
(** We can also use the "int" core module to convert an integer to binary format. *)
(**  let binary_of_int (i : int) : string =  *)
(**      Int.to_string ~base:2: i  *)
(**  *)
(**  let binary_boias : string = "1010"  *)
(**   *)
(**  assert (binary_of_int 10 = binary_boias)  *)
(**   *)
(**  print_string binary_boias;;  *)
(**   *)
(**  print_string (binary_of_int 10);; *)


(** Version 8 - Using Lambda function to convert decimal to binary *)
(**  let binary_of_int (i : int) : string =  *)
(**      (i |> string_of_int |> String.map (fun c -> if c = '1' then '0' else '1')) *)
(**  *)
(**  let binary_boias : string = "1010"  *)
(**   *)
(**  assert (binary_of_int 10 = binary_boias)  *)
(**   *)
(**  print_string binary_boias;;  *)
(**   *)
(**  print_string (binary_of_int 10);; *)



(** Version 9 - Using Fold_left to convert decimal to binary *)
(**  let binary_of_

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
