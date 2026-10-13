let rec last_Digit (n : int) : int =
    match n with
    | 0 -> 0
    | n when n mod 10 = 0 -> lastDigit (n / 10)
    | _ -> n mod 10

let () =
    let input_number = read_int () in
    print_endline (string_of_int (last_Digit input_number));


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit of a given number. *)
