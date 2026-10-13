let rec is_polite (n : int) : int = 
    (* Check if the number has consecutive adjacent digits that are equal *)
    if (n < 10) then n else
    (* If the number has no such consecutive digits, return 0 *)
    let rec consecutive_digits_equal (n : int) : bool = 
        if (n < 10) then true else
        if (n mod 10 = n mod 100 mod 10) then consecutive_digits_equal (n / 10) else false
    in
    if (consecutive_digits_equal n) then n else
    let rec polite_digit_count (n : int) : int =
        if (n < 10) then 1 else
        if (n mod 10 = n mod 100 mod 10) then polite_digit_count (n / 10) + 1 else polite_digit_count (n / 10)
    in
    if (polite_digit_count n >= 2) then n else 0

let nth_polite_number (n : int) : int = 
    let rec polite_number (a : int) : int = 
        if (is_polite a) then a else polite_number (a + 1)
    in
    polite_number 1

let () = 
    print_endline (string_of_int (nth_polite_number 5))



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
