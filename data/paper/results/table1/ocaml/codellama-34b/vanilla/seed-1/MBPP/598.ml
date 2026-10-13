let rec armstrong_number (number : int) : bool =
    let str_num = string_of_int number in
    let num_len = String.length str_num in
    let rec check_digits (digits : int list) : bool =
        match digits with
        | [] -> true
        | d :: ds -> (int_of_string (d ^ (String.make (num_len - 1) d))) = number
    in
    check_digits (String.split_on_char ' ' str_num)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
