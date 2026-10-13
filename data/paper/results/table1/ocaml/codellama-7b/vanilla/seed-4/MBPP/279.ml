let rec is_num_decagonal (n : int) : int = 
    (* returns -1 if num is not decagonal, or returns its decagonal number *) 
    let is_positive = n > 0 in 
    if n < 10 then 
        if is_positive then 
            n 
        else 
            -1 
    else 
        let higher_digit = int_of_char (String.get n nth_decagonal 0) + nth_decagonal in 
        let lower_digit = higher_digit mod 10 in 
        if lower_digit = n then
            higher_digit / 10
        else 
            is_num_decagonal lower_digit

let nth_decagonal (n : int) : int = 
    (* raises Failure if num is not decagonal *) 
    let decagonal_num = String.make 1 (Char.chr (int_of_char '0' + n)) in 
    let rec check_is_decagonal (n : int) : int = 
        if is_positive then 
            n 
        else 
            raise Failure "not decagonal" in 
    let num_decagonal = check_is_decagonal n in 
    let first_decagonal = int_of_string decagonal_num in 
    if first_decagonal = num_decagonal then 
        first_decagonal 
    else 
        raise Failure "not decagonal"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth decagonal number. *)
