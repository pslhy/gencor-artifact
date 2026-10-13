
let rec amicable_numbers_sum (limit : int) : int = 
    (* Get all the divisors of a number *)
    let rec get_divisors (num : int) : int list = 
        [
            1;
            for i = 2 to int_of_float (sqrt (float_of_int num)) do 
                if num mod i = 0 then [i; num / i]
            done
        ]
    in
    (* Check if two numbers are amicable *)
    let rec is_amicable (num1 : int) (num2 : int) : bool = 
        get_divisors num1 = get_divisors num2 && num1 <> num2
    in
    (* Get all amicable numbers and sum them *)
    let rec sum_amicable_numbers (num : int) : int = 
        List.fold_left (+) 0 (List.filter (is_amicable num) [2..(num - 1)])
    in
    sum_amicable_numbers limit
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
